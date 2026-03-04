open Gospel
open Ast

(** {2 Abstract Syntax of the While language} *)

(** {3 Parsed trees}

   This is the output of the parser and the input of the type checker. *)

type location = Lexing.position * Lexing.position

type gdef = {
  name    : ident; 
  formals : ident list; 
  body    : expr;
  spec    : Gospel.Uast.val_spec option;
}

type gtoplevel = 
| GTexn         of ident * Ast.typ option
| GTdef         of gdef
| GTdatatype    of string list * ident * constructor list
| GTtype        of ident * typ
| GTgospel_func of Gospel.Uast.function_
| GTgospel_axiom of Gospel.Uast.axiom

type file = gtoplevel list

(** {3 Typed trees}

   This is the output of the type checker and the input of the code
   generation. *)

(** In the typed trees, all the occurrences of the same variable
   point to a single record of the following type. *)
type var = {
  var_name        : string;
  mutable var_ofs : int (** position wrt %rbp *)
}

type texpr =
  | TEcst   of int
  | TEvar   of var
  | TEbinop of op * texpr * texpr

type tstmt =
  (* | TSskip *)
  | TSlet   of var * texpr * texpr
  | TSif     of texpr * tstmt * tstmt
  | TSseq   of tstmt * tstmt
  | TSprint of texpr

type tfile = tstmt
