module StringSet = Set.Make(String)

let list_function_imports = [
  "length",  "use list.Length";
  "nth",     "use list.Nth";
  "rev",     "use list.Reverse";
  "append",  "use list.Append";
  "map",     "use list.Map";
  "filter",  "use list.Filter";
  "foldl",   "use list.FoldLeft";
  "foldr",   "use list.FoldRight";
  "mem",     "use list.Mem";
  "hd",      "use list.HdTl";
  "tl",      "use list.HdTl";
]

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
  | Ast.Eqcall (q, args) ->
      let acc = match q.modname.id with
        | "List" ->
            let acc = StringSet.add "use list.List" acc in
            (match List.assoc_opt q.field.id list_function_imports with
            | Some imp -> StringSet.add imp acc
            | None -> acc)
        | "Array" -> StringSet.add "use array.Array" acc
        | "String" -> StringSet.add "use string.String" acc
        | _ -> acc
      in
      collect_subexpr_imports acc (Ast.Eqcall (q, args))
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
  | Ast.Eqcall (_, args) ->
      List.fold_left collect_expr_imports acc args
  | _ -> acc

let collect_imports (gast: Gast.gtoplevel list) =
  List.fold_left (fun acc item ->
    match item with
    | Gast.GTdef d -> collect_expr_imports acc d.body
    | _ -> acc
  ) StringSet.empty gast