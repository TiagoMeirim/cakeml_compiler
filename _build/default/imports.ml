module StringSet = Set.Make(String)

let rec collect_expr_imports acc (e: Ast.expr) =
  match e with
  | Ast.Ebool _ 
  | Ast.Ebinop (Ast.Bandalso, _, _)
  | Ast.Ebinop (Ast.Borelse, _, _) ->
      collect_subexpr_imports (StringSet.add "use bool.Bool" acc) e
  | Ast.Ebinop ((Ast.Badd | Ast.Bsub | Ast.Bmul | Ast.Bdiv | Ast.Bmod
                | Ast.Blt | Ast.Bgt | Ast.Ble | Ast.Bge), _, _) ->
      collect_subexpr_imports (StringSet.add "use int.Int" acc) e
  | Ast.Enil | Ast.Elist _ | Ast.Econs _ | Ast.Eappend _ ->
      collect_subexpr_imports (StringSet.add "use list.List" acc) e
  | Ast.Eref _ | Ast.Ederef _ | Ast.Eassign _ ->
      collect_subexpr_imports (StringSet.add "use ref.Ref" acc) e
  | _ ->
      collect_subexpr_imports acc e

and collect_subexpr_imports acc (e: Ast.expr) =
  match e with
  | Ast.Ebinop (_, e1, e2) | Ast.Econs (e1, e2) 
  | Ast.Eappend (e1, e2) | Ast.Eassign (e1, e2) ->
      collect_expr_imports (collect_expr_imports acc e1) e2
  | Ast.Eunop (_, e) | Ast.Eref e | Ast.Ederef e 
  | Ast.Eprint e ->
      collect_expr_imports acc e
  | Ast.Eif (e1, e2, e3) ->
      collect_expr_imports 
        (collect_expr_imports (collect_expr_imports acc e1) e2) e3
  | Ast.Elet (_, e1, e2) ->
      collect_expr_imports (collect_expr_imports acc e1) e2
  | Ast.Ecall (_, args) | Ast.Econstr (_, args) | Ast.Elist args ->
      List.fold_left collect_expr_imports acc args
  | Ast.Ecase (e, cases) ->
      let acc = collect_expr_imports acc e in
      List.fold_left (fun acc (_, e) -> collect_expr_imports acc e) acc cases
  | Ast.Etuple el ->
      List.fold_left collect_expr_imports acc el
  | _ -> acc

let collect_imports (gast: Gast.gtoplevel list) =
  List.fold_left (fun acc item ->
    match item with
    | Gast.GTdef d -> collect_expr_imports acc d.body
    | _ -> acc
  ) StringSet.empty gast