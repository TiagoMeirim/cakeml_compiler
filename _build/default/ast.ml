
(** {2 Abstract Syntax of the While language} *)

(** {3 Parsed trees}

   This is the output of the parser and the input of the type checker. *)

type location = Lexing.position * Lexing.position

type ident = { loc: location; id: string; }

type op = Badd | Bsub | Bmul | Bdiv | Bminus | Bmod | Bassign | Bneq | Blt | Bgt 
| Ble | Bge | Bandalso | Borelse | Bnot

type qident = {
  modname : ident; 
  field      : ident; 
  loc     : location;
}

type expr =
  | Eunit
  | Ecst           of int
  | Evar           of ident
  | Etuple         of expr list
  | Eunop          of op * expr
  | Ebinop         of op * expr * expr
  | Eref           of expr
  | Ederef         of expr
  | Ebool          of bool
  | Eif            of expr * expr * expr
  | Elet           of ident * expr * expr
  | Eraise         of ident
  | Ecall          of ident * expr list
  | Eassign        of expr * expr
  | Ecase          of expr * case_clause list
  | Econstr        of ident * expr list
  | Enil
  | Elist          of expr list
  | Econs          of expr * expr 
  | Eappend        of expr * expr
  | Estring        of string
  | Eprint         of expr
  | Eqcall         of qident * expr list
  | Efun           of ident list * expr

and pattern =
  | Pnil
  | Plist   of pattern list
  | Pcons   of pattern * pattern
  | Pvar    of ident (* variable *)
  | Pwild (* _ *)
  | Pcst    of int (* int *)
  | Pbool   of bool
  | Pconstr of ident * pattern list (* Node l x r *)
  | Ptuple  of pattern list (* (x1, x2) *)
  | Pqconstr of qident * pattern list

and case_clause = pattern * expr

type def = {
  name    : ident; 
  formals : ident list; 
  body    : expr;
  (* spec    : string option; *)
}

type typ = 
| TyInt   of int
| TyBool  of bool
| TyName  of ident
| TyVar   of string
| TyApp   of typ * typ list
| TyTuple of typ list
| TyArr   of typ * typ

type constructor = {
  cname : ident;
  args : typ list
}

type toplevel = 
| Texn         of ident * typ option
| Tdef         of def
| Tdatatype    of string list * ident * constructor list
| Ttype        of ident * typ
| Tval         of ident * typ
| Tgospel_spec of string

type file = toplevel list

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
