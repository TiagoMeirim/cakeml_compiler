
(* The type of tokens. *)

type token = 
  | VAL
  | UNDERSCORE
  | TYVAR of (string)
  | TYPE
  | TRUE
  | THEN
  | STRING of (string)
  | SEMICOLON
  | RSBRACKET
  | RPAR
  | REF
  | RAISE
  | PRINT
  | PIPE
  | ORELSE
  | OF
  | NUM of (int)
  | LSBRACKET
  | LPAR
  | LET
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
  | DOT
  | DEREF
  | DATATYPE
  | CONS
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
  | APPEND
  | ANDALSO

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.file)
