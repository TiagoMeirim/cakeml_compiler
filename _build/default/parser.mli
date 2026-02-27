
(* The type of tokens. *)

type token = 
  | UNDERSCORE
  | TYVAR of (string)
  | TYPE
  | TRUE
  | THEN
  | SEMICOLON
  | RPAR
  | REF
  | RCURLY
  | RAISE
  | PRINT
  | PIPE
  | ORELSE
  | OF
  | NUM of (int)
  | LPAR
  | LET
  | LCURLY
  | IN
  | IF
  | IDENT of (string)
  | GOSPEL_COMMENT of (string)
  | FUN
  | FALSE
  | EXCEPTION
  | EOF
  | END
  | ELSE
  | DEREF
  | DATATYPE
  | COMMA
  | CASE
  | BSUB
  | BNEQ
  | BMUL
  | BMOD
  | BMINUS
  | BLT
  | BLE
  | BGT
  | BGE
  | BDIV
  | BADD
  | ASSIGN_REF
  | ASSIGN
  | ARROW
  | ANDALSO

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.file)
