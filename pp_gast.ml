open Format
open Gast
open Gospel
open Uast
open Ast

let pp_preid fmt (id: Preid.t) =
  fprintf fmt "%s" id.Preid.pid_str

let pp_rec_flag fmt (rec_flag: bool) =
  if rec_flag then fprintf fmt "rec " else ()

let rec pp_qualid fmt (q: qualid) =
  match q with
  | Qpreid id ->
      fprintf fmt "%a" pp_preid id
  | Qdot (q, id) -> 
      fprintf fmt "%a.%a" pp_qualid q pp_preid id

let pp_print_coma fmt () = fprintf fmt ", "

let pp_sep_space fmt () = fprintf fmt " "

let rec pp_pty fmt (pty: pty) =
  match pty with
  | PTtyvar id -> fprintf fmt "%a" pp_preid id
  | PTtyapp (q, []) ->
      fprintf fmt "%a" pp_qualid q
  | PTtyapp (q, pty_list) ->
      fprintf fmt "%a %a" pp_qualid q
        (pp_print_list ~pp_sep:pp_sep_space pp_pty) pty_list
  | PTtuple pty_list ->
      fprintf fmt "(%a)" 
        (pp_print_list ~pp_sep:pp_print_coma pp_pty) pty_list
  | PTarrow (Lnone id, pty_arg, pty_ret) ->
      fprintf fmt "%a: %a -> %a" pp_preid id pp_pty pty_arg
        pp_pty pty_ret
  | PTarrow (Lunit, pty_arg, pty_ret) ->
      fprintf fmt "unit -> %a" pp_pty pty_ret
  | PTarrow (Loptional id, pty_arg, pty_ret) ->
      fprintf fmt "?%a: %a -> %a" pp_preid id pp_pty pty_arg pp_pty pty_ret
  | PTarrow (Lnamed id, pty_arg, pty_ret) ->
      fprintf fmt "~%a: %a -> %a" pp_preid id pp_pty pty_arg pp_pty pty_ret
  | PTarrow (Lghost (id, _), pty_arg, pty_ret) ->
      fprintf fmt "[%a: %a] -> %a" pp_preid id pp_pty pty_arg pp_pty pty_ret
  

let pp_param fmt (p: param) =
  let (_, id, pty) = p in
  fprintf fmt "(%a: %a)" pp_preid id pp_pty pty

let pp_binop fmt (b: binop) =
  match b with
  | Tand      -> fprintf fmt "/\\"
  | Tand_asym -> fprintf fmt "/\\"
  | Tor       -> fprintf fmt "\\/"
  | Tor_asym  -> fprintf fmt "\\/"
  | Timplies  -> fprintf fmt "->"
  | Tiff      -> fprintf fmt "<->"

let pp_quant fmt (q: quant) =
  match q with
  | Tforall -> fprintf fmt "forall"
  | Texists -> fprintf fmt "exists"
  | Tlambda -> fprintf fmt "fun"

let pp_constant fmt (c: Ppxlib.constant) =
  match c with
  | Ppxlib.Pconst_integer (s, _) -> fprintf fmt "%s" s
  | Ppxlib.Pconst_float (s, _) -> fprintf fmt "%s" s
  | Ppxlib.Pconst_char c -> fprintf fmt "'%c'" c
  | Ppxlib.Pconst_string (s, _, _) -> fprintf fmt {|"%s"|} s

let rec pp_pattern fmt (p: Uast.pattern) =
  match p.pat_desc with
  | Pwild -> fprintf fmt "_"
  | Pvar id -> fprintf fmt "%a" pp_preid id
  | Papp (q, []) -> fprintf fmt "%a" pp_qualid q
  | Papp (q, pl) ->
      fprintf fmt "%a %a" pp_qualid q
        (pp_print_list ~pp_sep:pp_sep_space pp_pattern) pl
  | Prec fl ->
      fprintf fmt "{ %a }"
        (pp_print_list ~pp_sep:pp_print_coma pp_rec_field) fl
  | Ptuple pl ->
      fprintf fmt "(%a)"
        (pp_print_list ~pp_sep:pp_print_coma pp_pattern) pl
  | Pcast (p, pty) ->
      fprintf fmt "(%a: %a)" pp_pattern p pp_pty pty
  | Por (p1, p2) ->
      fprintf fmt "%a | %a" pp_pattern p1 pp_pattern p2
  | Pas (p, id) ->
      fprintf fmt "%a as %a" pp_pattern p pp_preid id
      
and pp_rec_field fmt (q, p) =
  fprintf fmt "%a = %a" pp_qualid q pp_pattern p

(* Operation pre process *)
let pp_infix_op fmt (op: Preid.t) =
  let s = op.Preid.pid_str in
  let s = if String.length s > 6 && String.sub s 0 6 = "infix " 
          then String.sub s 6 (String.length s - 6)
          else s in
  fprintf fmt "%s" s
  
let rec pp_term fmt (t: Uast.term) =
  match t.term_desc with
  | Ttrue -> fprintf fmt "true"
  | Tfalse -> fprintf fmt "false"
  | Tconst c -> fprintf fmt "%a" pp_constant c
  | Tpreid q -> fprintf fmt "%a" pp_qualid q
  | Tidapp (q, tl) ->
    (match q with
    | Qpreid op when String.length op.Preid.pid_str > 6
                  && String.sub op.Preid.pid_str 0 6 = "infix " ->
        let op_str = String.sub op.Preid.pid_str 6
                       (String.length op.Preid.pid_str - 6) in
        (match tl with
        | [t1; t2] -> fprintf fmt "%a %s %a" pp_term_arg t1 op_str pp_term_arg t2
        | _ -> fprintf fmt "%s %a" op_str
                 (pp_print_list ~pp_sep:pp_sep_space pp_term_arg) tl)
    | _ ->
        fprintf fmt "%a %a" pp_qualid q
          (pp_print_list ~pp_sep:pp_sep_space pp_term) tl)
  | Tfield (t, q) ->
      fprintf fmt "%a.%a" pp_term t pp_qualid q
  | Tapply (t1, t2) ->
      fprintf fmt "%a %a" pp_term t1 pp_term_arg t2
  | Tinfix (t1, op, t2) ->
      fprintf fmt "%a %a %a" pp_term t1 pp_infix_op op pp_term t2
  | Tbinop (t1, b, t2) ->
      begin match b with
      | Timplies ->
          fprintf fmt "%a %a %a" pp_term_arg t1 pp_binop b pp_term t2
      | _ ->
          fprintf fmt "%a %a %a" pp_term t1 pp_binop b pp_term t2
      end
  | Tnot t ->
      fprintf fmt "not %a" pp_term t
  | Tif (t1, t2, t3) ->
      fprintf fmt "if %a then %a else %a" pp_term t1 pp_term t2 pp_term t3
  | Tquant (q, bl, t) ->
      fprintf fmt "%a %a. %a" pp_quant q
        (pp_print_list ~pp_sep:pp_print_coma pp_binder) bl
        pp_term t
  | Tattr (s, t) ->
      fprintf fmt "%s %a" s pp_term t
  | Tlet (id, t1, t2) ->
      fprintf fmt "let %a = %a in %a" pp_preid id pp_term t1 pp_term t2
  | Tcase (t, cases) ->
      fprintf fmt "match %a with@\n%a@\n  end" pp_term t
        (pp_print_list ~pp_sep:pp_print_newline pp_case) cases
  | Tcast (t, pty) ->
      fprintf fmt "(%a: %a)" pp_term t pp_pty pty
  | Ttuple tl ->
      fprintf fmt "(%a)"
        (pp_print_list ~pp_sep:pp_print_coma pp_term) tl
  | Trecord fl ->
      fprintf fmt "{ %a }"
        (pp_print_list ~pp_sep:pp_print_coma pp_field) fl
  | Tupdate (t, fl) ->
      fprintf fmt "{ %a with %a }" pp_term t
        (pp_print_list ~pp_sep:pp_print_coma pp_field) fl
  | Tscope (q, t) ->
      fprintf fmt "%a.%a" pp_qualid q pp_term t
  | Told t ->
      fprintf fmt "old %a" pp_term t

and pp_term_arg fmt (t: Uast.term) =
  match t.term_desc with
  | Tapply _
  | Tidapp _
  | Tbinop _
  | Tinfix _
  | Tif _
  | Tlet _
  | Tquant _
  | Tcase _ ->
      fprintf fmt "(%a)" pp_term t
  | _ ->
      pp_term fmt t

and pp_binder fmt (b: Uast.binder) =
  let (id, pty_opt) = b in
  match pty_opt with
  | None -> fprintf fmt "%a" pp_preid id
  | Some pty -> fprintf fmt "%a: %a" pp_preid id pp_pty pty

and pp_case fmt (p, t) =
  fprintf fmt " | %a -> %a" pp_pattern p pp_term t

and pp_field fmt (q, t) =
  fprintf fmt "%a = %a" pp_qualid q pp_term t

let rec pp_typ fmt (t: typ) =
  match t with
  | TyVar s -> fprintf fmt "%s" s
  | TyName id -> fprintf fmt "%s" id.id
  | TyApp (t, tl) ->
      fprintf fmt "%a %a" pp_typ t
        (pp_print_list ~pp_sep:pp_sep_space pp_typ) tl
  | TyInt n -> fprintf fmt "%d" n
  | TyBool b -> fprintf fmt "%b" b
  | TyTuple tl ->
      fprintf fmt "(%a)"
        (pp_print_list ~pp_sep:pp_print_coma pp_typ) tl
  | TyArr (t1, t2) ->
      fprintf fmt "%a -> %a" pp_typ t1 pp_typ t2

let pp_constructor fmt (c: constructor) =
  match c.args with
  | [] -> fprintf fmt " | %s" c.cname.id
  | _  -> fprintf fmt " | %s %a" c.cname.id
      (pp_print_list ~pp_sep:pp_sep_space pp_typ) c.args

let pp_constructors fmt (cl: constructor list) =
  match cl with
  | [] -> ()
  | [c] ->
      (match c.args with
      | [] -> fprintf fmt "%s" c.cname.id
      | _  -> fprintf fmt "%s %a" c.cname.id
                (pp_print_list ~pp_sep:pp_sep_space pp_typ) c.args)
  | _ ->
      pp_print_list ~pp_sep:pp_print_newline pp_constructor fmt cl

(* Inline gospel spec *)
let pp_spec_clause keyword fmt terms =
  List.iter (fun t ->
    fprintf fmt "\n  %s { %a }" keyword pp_term t
  ) terms

let pp_xpost fmt (xp: Uast.xpost) =
  let (_, cases) = xp in
  List.iter (fun (q, pat_term_opt) ->
    match pat_term_opt with
    | None ->
        fprintf fmt "\n  raises { %a }" pp_qualid q
    | Some (p, t) ->
        fprintf fmt "\n  raises { %a %a -> %a }"
          pp_qualid q pp_pattern p pp_term t
  ) cases

let pp_val_spec fmt (spec: Uast.val_spec option) =
  match spec with
  | None -> ()
  | Some s ->
      pp_spec_clause "requires" fmt s.sp_pre;
      pp_spec_clause "checks" fmt s.sp_checks;
      pp_spec_clause "variant" fmt s.sp_variant;
      pp_spec_clause "ensures" fmt s.sp_post;
      pp_spec_clause "writes" fmt s.sp_writes;
      pp_spec_clause "consumes" fmt s.sp_consumes;
      List.iter (pp_xpost fmt) s.sp_xpost;
      if s.sp_diverge then fprintf fmt "\n  diverges";
      if s.sp_pure then fprintf fmt "\n  pure"

(* Recursive check *)
let rec expr_calls_function name expr =
  match expr with
  | Eunit -> false
  | Ecall (f, args) ->
      f.id = name || List.exists (expr_calls_function name) args
  | Econstr (_, args) ->
      List.exists (expr_calls_function name) args
  | Eif (e1, e2, e3) ->
      expr_calls_function name e1 ||
      expr_calls_function name e2 ||
      expr_calls_function name e3
  | Elet (_, e1, e2) ->
      expr_calls_function name e1 ||
      expr_calls_function name e2
  | Ecase (e, cases) ->
      expr_calls_function name e ||
      List.exists (fun (_, e) -> expr_calls_function name e) cases
  | Econs (e1, e2) | Eappend (e1, e2) | Ebinop (_, e1, e2) ->
      expr_calls_function name e1 || expr_calls_function name e2
  | Eunop (_, e) | Eref e | Ederef e | Eprint e ->
      expr_calls_function name e
  | Etuple el | Elist el ->
      List.exists (expr_calls_function name) el
  | Evar _ | Ecst _ | Ebool _ | Estring _ | Enil -> false
  | Eraise _ -> false
  | Eassign (e1, e2) ->
      expr_calls_function name e1 || expr_calls_function name e2
  | Eqcall (q, args) ->
      q.field.id = name || List.exists (expr_calls_function name) args
  | Efun (_, e) ->
      expr_calls_function name e

let pp_op fmt (o: op) =
  match o with
  | Bassign -> fprintf fmt "="
  | Badd    -> fprintf fmt "+"
  | Bsub    -> fprintf fmt "-"
  | Bmul    -> fprintf fmt "*"
  | Bdiv    -> fprintf fmt "/"
  | Bminus  -> fprintf fmt "-"
  | Bmod    -> fprintf fmt "mod"
  | Bandalso -> fprintf fmt "&&"
  | Borelse  -> fprintf fmt "||"
  | Bneq    -> fprintf fmt "<>"
  | Blt     -> fprintf fmt "<"
  | Bgt     -> fprintf fmt ">"
  | Ble     -> fprintf fmt "<="
  | Bge     -> fprintf fmt ">="
  | Bnot -> fprintf fmt "not"

let rec pp_expr fmt (e: expr) =
  match e with
  | Eunit -> fprintf fmt "()"
  | Ecst n -> fprintf fmt "%d" n
  | Ebool b -> fprintf fmt "%b" b
  | Estring s -> fprintf fmt {|"%s"|} s
  | Enil -> fprintf fmt "[]"
  | Evar x -> fprintf fmt "%s" x.id
  | Etuple el ->
      fprintf fmt "(%a)"
        (pp_print_list ~pp_sep:pp_print_coma pp_expr) el
  | Elist el ->
      fprintf fmt "[%a]"
        (pp_print_list ~pp_sep:pp_print_coma pp_expr) el
  | Econs (e1, e2) ->
      fprintf fmt "%a :: %a" pp_expr e1 pp_expr e2
  | Eappend (e1, e2) ->
      fprintf fmt "%a ++ %a" pp_expr e1 pp_expr e2
  | Eunop (op, e) ->
      fprintf fmt "%a %a" pp_op op pp_expr e
  | Ebinop (op, e1, e2) ->
      fprintf fmt "%a %a %a" pp_expr e1 pp_op op pp_expr e2
  | Eref e ->
      fprintf fmt "ref %a" pp_expr e
  | Ederef e ->
      fprintf fmt "!%a" pp_expr e
  | Eprint e ->
      fprintf fmt "print %a" pp_expr e
  | Eraise x ->
      if(x.id = "Absurd") then
        fprintf fmt "absurd"
      else
        fprintf fmt "raise %s" x.id
  | Eif (e1, e2, e3) ->
      fprintf fmt "if %a then %a else %a"
        pp_expr e1 pp_expr e2 pp_expr e3
  | Elet (x, e1, e2) ->
      fprintf fmt "let %s = %a in \n  %a" x.id pp_expr e1 pp_expr e2
  | Ecall (f, args) ->
      fprintf fmt "%s %a" f.id
        (pp_print_list ~pp_sep:pp_sep_space pp_expr_arg) args
  | Econstr (c, args) ->
      fprintf fmt "%s %a" c.id
        (pp_print_list ~pp_sep:pp_sep_space pp_expr_arg) args
  | Eassign (e1, e2) ->
      fprintf fmt "%a := %a" pp_expr e1 pp_expr e2
  | Ecase (e, cases) ->
      fprintf fmt "match %a with\n%a\n  end"
        pp_expr e
        (pp_print_list ~pp_sep:pp_print_newline pp_case_clause) cases
  | Eqcall (q, args) ->
      fprintf fmt "%s.%s %a" q.modname.id q.field.id
      (pp_print_list ~pp_sep:pp_sep_space pp_expr_arg) args
  | Efun (args, e) ->
      fprintf fmt "fun %a -> %a"
      (pp_print_list ~pp_sep:pp_sep_space
        (fun fmt id -> fprintf fmt "%s" id.id)) args
      pp_expr e

and pp_expr_arg fmt (e: expr) =
  match e with
  | Econstr (_, _::_)
  | Ecall (_, _::_)
  | Eif _
  | Elet _
  | Ecase _
  | Ebinop _
  | Eunop _
  | Econs _
  | Eappend _ ->
      fprintf fmt "(%a)" pp_expr e
  | Efun _ ->
      fprintf fmt "(%a)" pp_expr e
  | _ ->
      pp_expr fmt e

and pp_case_clause fmt (p, e) =
  fprintf fmt "  | %a -> %a" pp_pattern_expr p pp_expr e

and pp_pattern_expr fmt (p: Ast.pattern) =
  match p with
  | Pwild -> fprintf fmt "_"
  | Pvar x -> fprintf fmt "%s" x.id
  | Pbool b -> fprintf fmt "%b" b
  | Pcst n -> fprintf fmt "%d" n
  | Pnil -> fprintf fmt "[]"
  | Plist pl ->
      fprintf fmt "[%a]"
        (pp_print_list ~pp_sep:pp_print_coma pp_pattern_expr) pl
  | Pcons (p1, p2) ->
      fprintf fmt "%a :: %a" pp_pattern_expr p1 pp_pattern_expr p2
  | Ptuple pl ->
      fprintf fmt "(%a)"
        (pp_print_list ~pp_sep:pp_print_coma pp_pattern_expr) pl
  | Pconstr (c, pl) ->
      fprintf fmt "%s %a" c.id
        (pp_print_list ~pp_sep:pp_sep_space pp_pattern_expr_arg) pl
  | Pqconstr (q, pl) ->
    fprintf fmt "%s.%s %a" q.modname.id q.field.id
      (pp_print_list ~pp_sep:pp_sep_space pp_pattern_expr_arg) pl

and pp_pattern_expr_arg fmt (p: Ast.pattern) =
  match p with
  | Ast.Pconstr (_, _::_) ->
      fprintf fmt "(%a)" pp_pattern_expr p
  | _ ->
      pp_pattern_expr fmt p

let pp_gtoplevel fmt (g: gtoplevel) =
  match g with
  | GTexn (x, None) ->
      if(x.id <> "Absurd") then
        fprintf fmt "exception %s" x.id
  | GTexn (x, Some t) ->
      fprintf fmt "exception %s %a" x.id pp_typ t
  | GTdef d ->
      let is_rec = expr_calls_function d.name.id d.body in
      fprintf fmt "let %s%s %a%a \n = %a"
        (if is_rec then "rec " else "")
        d.name.id
        (pp_print_list ~pp_sep:pp_sep_space
          (fun fmt id -> fprintf fmt "%s" id.id)) d.formals
        pp_val_spec d.spec
        pp_expr d.body
  | GTtype (x, t) ->
      fprintf fmt "type %s = %a" x.id pp_typ t
  | GTdatatype (_, x, cl) ->
      (match cl with
      | [_] -> fprintf fmt "type %s = %a" x.id pp_constructors cl
      | _   -> fprintf fmt "type %s =\n%a" x.id
        (pp_print_list ~pp_sep:pp_print_newline pp_constructor) cl)
  | GTval (x, t) ->
      ()
  | GTgospel_func {fun_name; fun_rec; fun_params; fun_type = None; fun_def; _} ->
      fprintf fmt "predicate %a %a@[%a@]%a"
        pp_preid fun_name pp_rec_flag fun_rec
        (pp_print_list ~pp_sep:pp_sep_space pp_param) fun_params
        (fun fmt -> function
          | None -> ()
          | Some t -> fprintf fmt " =@\n %a" pp_term t) fun_def
  | GTgospel_func {fun_name; fun_rec; fun_params; fun_type = Some pty; fun_def; _} ->
      fprintf fmt "function %a %a%a : %a%a"
        pp_preid fun_name pp_rec_flag fun_rec
        (pp_print_list ~pp_sep:pp_sep_space pp_param) fun_params
        pp_pty pty
        (fun fmt -> function
          | None -> ()
          | Some t -> fprintf fmt " =@\n %a" pp_term t) fun_def
  | GTgospel_raw s ->
      fprintf fmt "%s" s
  | GTgospel_axiom {ax_name; ax_term; _} ->
      fprintf fmt "axiom %a : %a" pp_preid ax_name pp_term ax_term
  | GTgospel_lemma {prop_name; prop_term; _} ->
      fprintf fmt "lemma %a : %a" pp_preid prop_name pp_term prop_term