open Format
open Gast
open Gospel
open Uast
open Ast
open Ppxlib

(*
type val_spec = {
  sp_header : spec_header option;
  sp_pre : term list;
  sp_checks : term list;
  sp_post : term list;
  sp_xpost : xpost list;
  sp_writes : term list;
  sp_consumes : term list;
  sp_variant : term list;
  sp_diverge : bool;
  sp_pure : bool;
  sp_equiv : string list;
  sp_text : string;
  sp_loc : Location.t;
}

*)

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

let rec pp_pty fmt (pty: pty) =
  match pty with
  | PTtyvar id -> fprintf fmt "%a" pp_preid id
  | PTtyapp (q, []) ->
      fprintf fmt "%a" pp_qualid q
  | PTtyapp (q, pty_list) ->
      fprintf fmt "%a %a" pp_qualid q
        (pp_print_list ~pp_sep:pp_print_space pp_pty) pty_list
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

let pp_constant fmt (c: constant) =
  match c with
  | Pconst_integer (s, _) -> fprintf fmt "%s" s
  | Pconst_float (s, _) -> fprintf fmt "%s" s
  | Pconst_char c -> fprintf fmt "'%c'" c
  | Pconst_string (s, _, _) -> fprintf fmt {|"%s"|} s

let rec pp_pattern fmt (p: Uast.pattern) =
  match p.pat_desc with
  | Pwild -> fprintf fmt "_"
  | Pvar id -> fprintf fmt "%a" pp_preid id
  | Papp (q, []) -> fprintf fmt "%a" pp_qualid q
  | Papp (q, pl) ->
      fprintf fmt "%a %a" pp_qualid q
        (pp_print_list ~pp_sep:pp_print_space pp_pattern) pl
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
        | [t1; t2] -> fprintf fmt "%a %s %a" pp_term t1 op_str pp_term t2
        | _ -> fprintf fmt "%s %a" op_str
                 (pp_print_list ~pp_sep:pp_print_space pp_term) tl)
    | _ ->
        fprintf fmt "%a %a" pp_qualid q
          (pp_print_list ~pp_sep:pp_print_space pp_term) tl)
  | Tfield (t, q) ->
      fprintf fmt "%a.%a" pp_term t pp_qualid q
  | Tapply (t1, t2) ->
      fprintf fmt "%a %a" pp_term t1 pp_term t2
  | Tinfix (t1, op, t2) ->
      fprintf fmt "%a %a %a" pp_term t1 pp_infix_op op pp_term t2
  | Tbinop (t1, b, t2) ->
      fprintf fmt "%a %a %a" pp_term t1 pp_binop b pp_term t2
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

and pp_binder fmt (b: Uast.binder) =
  let (id, pty_opt) = b in
  match pty_opt with
  | None -> fprintf fmt "%a" pp_preid id
  | Some pty -> fprintf fmt "(%a: %a)" pp_preid id pp_pty pty

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
        (pp_print_list ~pp_sep:pp_print_space pp_typ) tl
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
      (pp_print_list ~pp_sep:pp_print_space pp_typ) c.args

let rec expr_calls_function name expr =
  match expr with
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

let pp_gtoplevel fmt (g: gtoplevel) =
  match g with
  | GTexn (x, None) ->
      fprintf fmt "exception %s" x.id
  | GTexn (x, Some t) ->
      fprintf fmt "exception %s %a" x.id pp_typ t
  | GTdef d ->
    let is_rec = expr_calls_function d.name.id d.body in
    fprintf fmt "let %s%s = ..."
      (if is_rec then "rec " else "")
      d.name.id
  | GTtype (x, t) ->
      fprintf fmt "type %s = %a" x.id pp_typ t
  | GTdatatype (_, x, cl) ->
      fprintf fmt "type %s =\n%a" x.id
        (pp_print_list ~pp_sep:pp_print_newline pp_constructor) cl
  | GTgospel_func {fun_name; fun_rec; fun_params; fun_type = None; fun_def; _} ->
      fprintf fmt "predicate %a %a@[%a@]%a"
        pp_preid fun_name pp_rec_flag fun_rec
        (pp_print_list ~pp_sep:pp_print_space pp_param) fun_params
        (fun fmt -> function
          | None -> ()
          | Some t -> fprintf fmt " =@\n %a" pp_term t) fun_def
  | GTgospel_func {fun_name; fun_rec; fun_params; fun_type = Some pty; fun_def; _} ->
      fprintf fmt "function %a %a%a : %a%a"
        pp_preid fun_name pp_rec_flag fun_rec
        (pp_print_list ~pp_sep:pp_print_space pp_param) fun_params
        pp_pty pty
        (fun fmt -> function
          | None -> ()
          | Some t -> fprintf fmt " =@\n %a" pp_term t) fun_def
  | GTgospel_axiom {ax_name; ax_term; _} ->
      fprintf fmt "axiom %a : %a" pp_preid ax_name pp_term ax_term
  | GTgospel_lemma {prop_name; prop_term; _} ->
      fprintf fmt "lemma %a : %a" pp_preid prop_name pp_term prop_term