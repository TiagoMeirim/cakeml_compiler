
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | UNDERSCORE
    | TYVAR of (
# 14 "parser.mly"
       (string)
# 16 "parser.ml"
  )
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
    | NUM of (
# 8 "parser.mly"
       (int)
# 33 "parser.ml"
  )
    | LPAR
    | LET
    | LCURLY
    | IN
    | IF
    | IDENT of (
# 9 "parser.mly"
       (string)
# 43 "parser.ml"
  )
    | GOSPEL_COMMENT of (
# 27 "parser.mly"
       (string)
# 48 "parser.ml"
  )
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
    | BEQ
    | BDIV
    | BADD
    | ASSIGN_REF
    | ASSIGN
    | ARROW
    | ANDALSO
  
end

include MenhirBasics

# 1 "parser.mly"
  
    open Ast

    let mk_id id startpos endpos =
      { loc = (startpos, endpos); id }

# 88 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_file) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: file. *)

  | MenhirState001 : (('s, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_state
    (** State 001.
        Stack shape : TYPE.
        Start symbol: file. *)

  | MenhirState004 : ((('s, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 004.
        Stack shape : TYPE ident.
        Start symbol: file. *)

  | MenhirState006 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 006.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState010 : (('s, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 010.
        Stack shape : atyp.
        Start symbol: file. *)

  | MenhirState014 : (('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_state
    (** State 014.
        Stack shape : FUN.
        Start symbol: file. *)

  | MenhirState015 : ((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 015.
        Stack shape : FUN ident.
        Start symbol: file. *)

  | MenhirState017 : (((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_, _menhir_box_file) _menhir_state
    (** State 017.
        Stack shape : FUN ident list(ident).
        Start symbol: file. *)

  | MenhirState019 : (('s, _menhir_box_file) _menhir_cell1_REF, _menhir_box_file) _menhir_state
    (** State 019.
        Stack shape : REF.
        Start symbol: file. *)

  | MenhirState020 : (('s, _menhir_box_file) _menhir_cell1_RAISE, _menhir_box_file) _menhir_state
    (** State 020.
        Stack shape : RAISE.
        Start symbol: file. *)

  | MenhirState023 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 023.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState024 : (('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_state
    (** State 024.
        Stack shape : LET.
        Start symbol: file. *)

  | MenhirState026 : ((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 026.
        Stack shape : LET ident.
        Start symbol: file. *)

  | MenhirState027 : (('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_state
    (** State 027.
        Stack shape : IF.
        Start symbol: file. *)

  | MenhirState030 : (('s, _menhir_box_file) _menhir_cell1_DEREF, _menhir_box_file) _menhir_state
    (** State 030.
        Stack shape : DEREF.
        Start symbol: file. *)

  | MenhirState031 : (('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_state
    (** State 031.
        Stack shape : CASE.
        Start symbol: file. *)

  | MenhirState032 : (('s, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 032.
        Stack shape : BSUB.
        Start symbol: file. *)

  | MenhirState033 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 033.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState034 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 034.
        Stack shape : ident LPAR.
        Start symbol: file. *)

  | MenhirState039 : (((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 039.
        Stack shape : ident LPAR expr.
        Start symbol: file. *)

  | MenhirState041 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE, _menhir_box_file) _menhir_state
    (** State 041.
        Stack shape : expr ORELSE.
        Start symbol: file. *)

  | MenhirState042 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 042.
        Stack shape : expr ORELSE expr.
        Start symbol: file. *)

  | MenhirState043 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 043.
        Stack shape : expr BSUB.
        Start symbol: file. *)

  | MenhirState044 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 044.
        Stack shape : expr BSUB expr.
        Start symbol: file. *)

  | MenhirState045 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL, _menhir_box_file) _menhir_state
    (** State 045.
        Stack shape : expr BMUL.
        Start symbol: file. *)

  | MenhirState046 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 046.
        Stack shape : expr BMUL expr.
        Start symbol: file. *)

  | MenhirState047 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS, _menhir_box_file) _menhir_state
    (** State 047.
        Stack shape : expr BMINUS.
        Start symbol: file. *)

  | MenhirState048 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 048.
        Stack shape : expr BMINUS expr.
        Start symbol: file. *)

  | MenhirState049 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF, _menhir_box_file) _menhir_state
    (** State 049.
        Stack shape : expr ASSIGN_REF.
        Start symbol: file. *)

  | MenhirState050 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 050.
        Stack shape : expr ASSIGN_REF expr.
        Start symbol: file. *)

  | MenhirState051 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ, _menhir_box_file) _menhir_state
    (** State 051.
        Stack shape : expr BNEQ.
        Start symbol: file. *)

  | MenhirState052 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 052.
        Stack shape : expr BNEQ expr.
        Start symbol: file. *)

  | MenhirState053 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD, _menhir_box_file) _menhir_state
    (** State 053.
        Stack shape : expr BMOD.
        Start symbol: file. *)

  | MenhirState054 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 054.
        Stack shape : expr BMOD expr.
        Start symbol: file. *)

  | MenhirState056 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV, _menhir_box_file) _menhir_state
    (** State 056.
        Stack shape : expr BDIV.
        Start symbol: file. *)

  | MenhirState057 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 057.
        Stack shape : expr BDIV expr.
        Start symbol: file. *)

  | MenhirState058 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD, _menhir_box_file) _menhir_state
    (** State 058.
        Stack shape : expr BADD.
        Start symbol: file. *)

  | MenhirState059 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 059.
        Stack shape : expr BADD expr.
        Start symbol: file. *)

  | MenhirState060 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT, _menhir_box_file) _menhir_state
    (** State 060.
        Stack shape : expr BLT.
        Start symbol: file. *)

  | MenhirState061 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 061.
        Stack shape : expr BLT expr.
        Start symbol: file. *)

  | MenhirState062 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE, _menhir_box_file) _menhir_state
    (** State 062.
        Stack shape : expr BLE.
        Start symbol: file. *)

  | MenhirState063 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 063.
        Stack shape : expr BLE expr.
        Start symbol: file. *)

  | MenhirState064 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT, _menhir_box_file) _menhir_state
    (** State 064.
        Stack shape : expr BGT.
        Start symbol: file. *)

  | MenhirState065 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 065.
        Stack shape : expr BGT expr.
        Start symbol: file. *)

  | MenhirState066 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE, _menhir_box_file) _menhir_state
    (** State 066.
        Stack shape : expr BGE.
        Start symbol: file. *)

  | MenhirState067 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 067.
        Stack shape : expr BGE expr.
        Start symbol: file. *)

  | MenhirState068 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BEQ, _menhir_box_file) _menhir_state
    (** State 068.
        Stack shape : expr BEQ.
        Start symbol: file. *)

  | MenhirState069 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BEQ, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 069.
        Stack shape : expr BEQ expr.
        Start symbol: file. *)

  | MenhirState070 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO, _menhir_box_file) _menhir_state
    (** State 070.
        Stack shape : expr ANDALSO.
        Start symbol: file. *)

  | MenhirState071 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 071.
        Stack shape : expr ANDALSO expr.
        Start symbol: file. *)

  | MenhirState072 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_state
    (** State 072.
        Stack shape : expr COMMA.
        Start symbol: file. *)

  | MenhirState073 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 073.
        Stack shape : expr COMMA expr.
        Start symbol: file. *)

  | MenhirState075 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 075.
        Stack shape : expr BSUB.
        Start symbol: file. *)

  | MenhirState076 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 076.
        Stack shape : expr BSUB expr.
        Start symbol: file. *)

  | MenhirState079 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 079.
        Stack shape : expr expr.
        Start symbol: file. *)

  | MenhirState082 : (('s, _menhir_box_file) _menhir_cell1_aexpr, _menhir_box_file) _menhir_state
    (** State 082.
        Stack shape : aexpr.
        Start symbol: file. *)

  | MenhirState084 : ((('s, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 084.
        Stack shape : BSUB expr.
        Start symbol: file. *)

  | MenhirState085 : ((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 085.
        Stack shape : CASE expr.
        Start symbol: file. *)

  | MenhirState086 : (((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_state
    (** State 086.
        Stack shape : CASE expr OF.
        Start symbol: file. *)

  | MenhirState090 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 090.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState094 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 094.
        Stack shape : LPAR pattern.
        Start symbol: file. *)

  | MenhirState095 : ((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_state
    (** State 095.
        Stack shape : pattern COMMA.
        Start symbol: file. *)

  | MenhirState096 : (((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 096.
        Stack shape : pattern COMMA pattern.
        Start symbol: file. *)

  | MenhirState098 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 098.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState102 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 102.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState108 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 108.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState112 : (('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 112.
        Stack shape : pattern.
        Start symbol: file. *)

  | MenhirState113 : ((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 113.
        Stack shape : pattern expr.
        Start symbol: file. *)

  | MenhirState115 : ((((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_state
    (** State 115.
        Stack shape : CASE expr OF case_clause.
        Start symbol: file. *)

  | MenhirState116 : ((('s, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_state
    (** State 116.
        Stack shape : case_clause PIPE.
        Start symbol: file. *)

  | MenhirState117 : (((('s, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_state
    (** State 117.
        Stack shape : case_clause PIPE case_clause.
        Start symbol: file. *)

  | MenhirState120 : ((('s, _menhir_box_file) _menhir_cell1_DEREF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 120.
        Stack shape : DEREF expr.
        Start symbol: file. *)

  | MenhirState121 : ((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 121.
        Stack shape : IF expr.
        Start symbol: file. *)

  | MenhirState122 : (((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_state
    (** State 122.
        Stack shape : IF expr THEN.
        Start symbol: file. *)

  | MenhirState123 : ((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 123.
        Stack shape : IF expr THEN expr.
        Start symbol: file. *)

  | MenhirState124 : (((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE, _menhir_box_file) _menhir_state
    (** State 124.
        Stack shape : IF expr THEN expr ELSE.
        Start symbol: file. *)

  | MenhirState125 : ((((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 125.
        Stack shape : IF expr THEN expr ELSE expr.
        Start symbol: file. *)

  | MenhirState126 : (((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 126.
        Stack shape : LET ident expr.
        Start symbol: file. *)

  | MenhirState127 : ((((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN, _menhir_box_file) _menhir_state
    (** State 127.
        Stack shape : LET ident expr IN.
        Start symbol: file. *)

  | MenhirState128 : (((((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 128.
        Stack shape : LET ident expr IN expr.
        Start symbol: file. *)

  | MenhirState130 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 130.
        Stack shape : LPAR expr.
        Start symbol: file. *)

  | MenhirState131 : ((('s, _menhir_box_file) _menhir_cell1_REF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 131.
        Stack shape : REF expr.
        Start symbol: file. *)

  | MenhirState132 : ((((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 132.
        Stack shape : FUN ident list(ident) expr.
        Start symbol: file. *)

  | MenhirState133 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 133.
        Stack shape : ident ident.
        Start symbol: file. *)

  | MenhirState135 : (('s, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_state
    (** State 135.
        Stack shape : EXCEPTION.
        Start symbol: file. *)

  | MenhirState137 : (('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_state
    (** State 137.
        Stack shape : DATATYPE.
        Start symbol: file. *)

  | MenhirState138 : (('s, _menhir_box_file) _menhir_cell1_TYVAR, _menhir_box_file) _menhir_state
    (** State 138.
        Stack shape : TYVAR.
        Start symbol: file. *)

  | MenhirState140 : ((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_state
    (** State 140.
        Stack shape : DATATYPE tyvar_list.
        Start symbol: file. *)

  | MenhirState142 : (((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 142.
        Stack shape : DATATYPE tyvar_list ident.
        Start symbol: file. *)

  | MenhirState143 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 143.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState145 : (('s, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 145.
        Stack shape : atyp.
        Start symbol: file. *)

  | MenhirState148 : ((((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_state
    (** State 148.
        Stack shape : DATATYPE tyvar_list ident constructor.
        Start symbol: file. *)

  | MenhirState149 : ((('s, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_state
    (** State 149.
        Stack shape : constructor PIPE.
        Start symbol: file. *)

  | MenhirState150 : (((('s, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_state
    (** State 150.
        Stack shape : constructor PIPE constructor.
        Start symbol: file. *)

  | MenhirState153 : (('s, _menhir_box_file) _menhir_cell1_toplevel, _menhir_box_file) _menhir_state
    (** State 153.
        Stack shape : toplevel.
        Start symbol: file. *)


and ('s, 'r) _menhir_cell1_aexpr = 
  | MenhirCell1_aexpr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_apattern = 
  | MenhirCell1_apattern of 's * ('s, 'r) _menhir_state * (Ast.pattern)

and ('s, 'r) _menhir_cell1_atyp = 
  | MenhirCell1_atyp of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_case_clause = 
  | MenhirCell1_case_clause of 's * ('s, 'r) _menhir_state * (Ast.case_clause)

and ('s, 'r) _menhir_cell1_constructor = 
  | MenhirCell1_constructor of 's * ('s, 'r) _menhir_state * (Ast.constructor)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_ident = 
  | MenhirCell1_ident of 's * ('s, 'r) _menhir_state * (Ast.ident)

and ('s, 'r) _menhir_cell1_list_ident_ = 
  | MenhirCell1_list_ident_ of 's * ('s, 'r) _menhir_state * (Ast.ident list)

and ('s, 'r) _menhir_cell1_pattern = 
  | MenhirCell1_pattern of 's * ('s, 'r) _menhir_state * (Ast.pattern)

and ('s, 'r) _menhir_cell1_toplevel = 
  | MenhirCell1_toplevel of 's * ('s, 'r) _menhir_state * (Ast.toplevel)

and ('s, 'r) _menhir_cell1_tyvar_list = 
  | MenhirCell1_tyvar_list of 's * ('s, 'r) _menhir_state * (string list)

and ('s, 'r) _menhir_cell1_ANDALSO = 
  | MenhirCell1_ANDALSO of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ASSIGN_REF = 
  | MenhirCell1_ASSIGN_REF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BADD = 
  | MenhirCell1_BADD of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BDIV = 
  | MenhirCell1_BDIV of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BEQ = 
  | MenhirCell1_BEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BGE = 
  | MenhirCell1_BGE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BGT = 
  | MenhirCell1_BGT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BLE = 
  | MenhirCell1_BLE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BLT = 
  | MenhirCell1_BLT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BMINUS = 
  | MenhirCell1_BMINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BMOD = 
  | MenhirCell1_BMOD of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BMUL = 
  | MenhirCell1_BMUL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BNEQ = 
  | MenhirCell1_BNEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BSUB = 
  | MenhirCell1_BSUB of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CASE = 
  | MenhirCell1_CASE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_COMMA = 
  | MenhirCell1_COMMA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DATATYPE = 
  | MenhirCell1_DATATYPE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DEREF = 
  | MenhirCell1_DEREF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ELSE = 
  | MenhirCell1_ELSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXCEPTION = 
  | MenhirCell1_EXCEPTION of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FUN = 
  | MenhirCell1_FUN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IN = 
  | MenhirCell1_IN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OF = 
  | MenhirCell1_OF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ORELSE = 
  | MenhirCell1_ORELSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PIPE = 
  | MenhirCell1_PIPE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RAISE = 
  | MenhirCell1_RAISE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_REF = 
  | MenhirCell1_REF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_THEN = 
  | MenhirCell1_THEN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TYPE = 
  | MenhirCell1_TYPE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TYVAR = 
  | MenhirCell1_TYVAR of 's * ('s, 'r) _menhir_state * (
# 14 "parser.mly"
       (string)
# 700 "parser.ml"
)

and _menhir_box_file = 
  | MenhirBox_file of (Ast.file) [@@unboxed]

let _menhir_action_01 =
  fun n ->
    (
# 99 "parser.mly"
          ( Ecst n )
# 711 "parser.ml"
     : (Ast.expr))

let _menhir_action_02 =
  fun () ->
    (
# 100 "parser.mly"
       ( Ebool true )
# 719 "parser.ml"
     : (Ast.expr))

let _menhir_action_03 =
  fun () ->
    (
# 101 "parser.mly"
        ( Ebool false )
# 727 "parser.ml"
     : (Ast.expr))

let _menhir_action_04 =
  fun x ->
    (
# 102 "parser.mly"
            ( Evar x )
# 735 "parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun e ->
    (
# 103 "parser.mly"
                     ( e )
# 743 "parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun es ->
    (
# 104 "parser.mly"
                          ( Etuple es )
# 751 "parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun () ->
    (
# 134 "parser.mly"
       ( Pbool true )
# 759 "parser.ml"
     : (Ast.pattern))

let _menhir_action_08 =
  fun () ->
    (
# 135 "parser.mly"
        ( Pbool false )
# 767 "parser.ml"
     : (Ast.pattern))

let _menhir_action_09 =
  fun () ->
    (
# 136 "parser.mly"
             ( Pwild )
# 775 "parser.ml"
     : (Ast.pattern))

let _menhir_action_10 =
  fun n ->
    (
# 137 "parser.mly"
          ( Pcst n )
# 783 "parser.ml"
     : (Ast.pattern))

let _menhir_action_11 =
  fun x ->
    (
# 138 "parser.mly"
            ( Pvar x )
# 791 "parser.ml"
     : (Ast.pattern))

let _menhir_action_12 =
  fun ps ->
    (
# 139 "parser.mly"
                             ( Ptuple ps )
# 799 "parser.ml"
     : (Ast.pattern))

let _menhir_action_13 =
  fun ty ->
    (
# 80 "parser.mly"
                        ( TyVar ty )
# 807 "parser.ml"
     : (Ast.typ))

let _menhir_action_14 =
  fun x ->
    (
# 81 "parser.mly"
                        ( TyName x )
# 815 "parser.ml"
     : (Ast.typ))

let _menhir_action_15 =
  fun t ->
    (
# 82 "parser.mly"
                        ( t )
# 823 "parser.ml"
     : (Ast.typ))

let _menhir_action_16 =
  fun e p ->
    (
# 124 "parser.mly"
                             ( (p, e) )
# 831 "parser.ml"
     : (Ast.case_clause))

let _menhir_action_17 =
  fun c rest ->
    (
# 127 "parser.mly"
                                           ( c :: rest )
# 839 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_18 =
  fun args cname ->
    (
# 75 "parser.mly"
                             ( { cname = cname; args = args } )
# 847 "parser.ml"
     : (Ast.constructor))

let _menhir_action_19 =
  fun c rest ->
    (
# 66 "parser.mly"
                                           ( c :: rest )
# 855 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_20 =
  fun args s x ->
    (
# 92 "parser.mly"
      ( { name = x; formals = args; body = s } )
# 863 "parser.ml"
     : (Ast.def))

let _menhir_action_21 =
  fun e ->
    (
# 108 "parser.mly"
            ( e )
# 871 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun args cname ->
    (
# 109 "parser.mly"
                              ( Econstr(cname, args) )
# 879 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun args f ->
    (
# 110 "parser.mly"
                                   ( Ecall(f, args) )
# 887 "parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun e ->
    (
# 111 "parser.mly"
               ( Eref e )
# 895 "parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun e ->
    (
# 112 "parser.mly"
                             ( Ederef e )
# 903 "parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun e ->
    (
# 113 "parser.mly"
                             ( Eunop (Bminus, e) )
# 911 "parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun e1 e2 ->
    let o = 
# 168 "parser.mly"
       ( Badd )
# 919 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 924 "parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun e1 e2 ->
    let o = 
# 169 "parser.mly"
       ( Bsub )
# 932 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 937 "parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun e1 e2 ->
    let o = 
# 170 "parser.mly"
       ( Bmul )
# 945 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 950 "parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun e1 e2 ->
    let o = 
# 171 "parser.mly"
       ( Bdiv )
# 958 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 963 "parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun e1 e2 ->
    let o = 
# 172 "parser.mly"
         ( Bminus )
# 971 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 976 "parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun e1 e2 ->
    let o = 
# 173 "parser.mly"
       ( Bmod )
# 984 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 989 "parser.ml"
     : (Ast.expr))

let _menhir_action_33 =
  fun e1 e2 ->
    let o = 
# 174 "parser.mly"
           ( Bandalso )
# 997 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1002 "parser.ml"
     : (Ast.expr))

let _menhir_action_34 =
  fun e1 e2 ->
    let o = 
# 175 "parser.mly"
           ( Borelse )
# 1010 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1015 "parser.ml"
     : (Ast.expr))

let _menhir_action_35 =
  fun e1 e2 ->
    let o = 
# 176 "parser.mly"
       ( Beq )
# 1023 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1028 "parser.ml"
     : (Ast.expr))

let _menhir_action_36 =
  fun e1 e2 ->
    let o = 
# 177 "parser.mly"
       ( Bneq )
# 1036 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1041 "parser.ml"
     : (Ast.expr))

let _menhir_action_37 =
  fun e1 e2 ->
    let o = 
# 178 "parser.mly"
       ( Blt )
# 1049 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1054 "parser.ml"
     : (Ast.expr))

let _menhir_action_38 =
  fun e1 e2 ->
    let o = 
# 179 "parser.mly"
       ( Bgt )
# 1062 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1067 "parser.ml"
     : (Ast.expr))

let _menhir_action_39 =
  fun e1 e2 ->
    let o = 
# 180 "parser.mly"
       ( Ble )
# 1075 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1080 "parser.ml"
     : (Ast.expr))

let _menhir_action_40 =
  fun e1 e2 ->
    let o = 
# 181 "parser.mly"
       ( Bge )
# 1088 "parser.ml"
     in
    (
# 114 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1093 "parser.ml"
     : (Ast.expr))

let _menhir_action_41 =
  fun e s1 s2 ->
    (
# 115 "parser.mly"
                                            ( Eif (e, s1, s2) )
# 1101 "parser.ml"
     : (Ast.expr))

let _menhir_action_42 =
  fun e1 e2 x ->
    (
# 116 "parser.mly"
                                                  ( Elet (x, e1, e2) )
# 1109 "parser.ml"
     : (Ast.expr))

let _menhir_action_43 =
  fun x ->
    (
# 117 "parser.mly"
                  ( Eraise x )
# 1117 "parser.ml"
     : (Ast.expr))

let _menhir_action_44 =
  fun e1 e2 ->
    (
# 118 "parser.mly"
                                 ( Eassign (e1, e2) )
# 1125 "parser.ml"
     : (Ast.expr))

let _menhir_action_45 =
  fun cs e ->
    (
# 119 "parser.mly"
                                     ( Ecase (e, cs) )
# 1133 "parser.ml"
     : (Ast.expr))

let _menhir_action_46 =
  fun s ->
    (
# 120 "parser.mly"
                     ( Egospel_inline s )
# 1141 "parser.ml"
     : (Ast.expr))

let _menhir_action_47 =
  fun e rest ->
    (
# 159 "parser.mly"
                                ( e :: rest )
# 1149 "parser.ml"
     : (Ast.expr list))

let _menhir_action_48 =
  fun e rest ->
    (
# 163 "parser.mly"
                                      ( e :: rest )
# 1157 "parser.ml"
     : (Ast.expr list))

let _menhir_action_49 =
  fun () ->
    (
# 164 "parser.mly"
  ( [] )
# 1165 "parser.ml"
     : (Ast.expr list))

let _menhir_action_50 =
  fun items ->
    (
# 45 "parser.mly"
                        ( items )
# 1173 "parser.ml"
     : (Ast.file))

let _menhir_action_51 =
  fun _endpos_x_ _startpos_x_ x ->
    let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    (
# 185 "parser.mly"
            ( mk_id x _startpos _endpos )
# 1183 "parser.ml"
     : (Ast.ident))

let _menhir_action_52 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1191 "parser.ml"
     : (Ast.typ list))

let _menhir_action_53 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1199 "parser.ml"
     : (Ast.typ list))

let _menhir_action_54 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1207 "parser.ml"
     : (Ast.expr list))

let _menhir_action_55 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1215 "parser.ml"
     : (Ast.expr list))

let _menhir_action_56 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1223 "parser.ml"
     : (Ast.ident list))

let _menhir_action_57 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1231 "parser.ml"
     : (Ast.ident list))

let _menhir_action_58 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1239 "parser.ml"
     : (Ast.file))

let _menhir_action_59 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1247 "parser.ml"
     : (Ast.file))

let _menhir_action_60 =
  fun c rest ->
    (
# 130 "parser.mly"
                                                ( c :: rest )
# 1255 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_61 =
  fun () ->
    (
# 131 "parser.mly"
  ( [] )
# 1263 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_62 =
  fun c rest ->
    (
# 70 "parser.mly"
                                                ( c :: rest )
# 1271 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_63 =
  fun () ->
    (
# 71 "parser.mly"
  ( [] )
# 1279 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_64 =
  fun p rest ->
    (
# 155 "parser.mly"
                                         ( p :: rest )
# 1287 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_65 =
  fun () ->
    (
# 156 "parser.mly"
  ( [] )
# 1295 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_66 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1303 "parser.ml"
     : (Ast.expr list))

let _menhir_action_67 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1311 "parser.ml"
     : (Ast.expr list))

let _menhir_action_68 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1319 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_69 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1327 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_70 =
  fun () ->
    (
# 143 "parser.mly"
       ( Pbool true )
# 1335 "parser.ml"
     : (Ast.pattern))

let _menhir_action_71 =
  fun () ->
    (
# 144 "parser.mly"
        ( Pbool false )
# 1343 "parser.ml"
     : (Ast.pattern))

let _menhir_action_72 =
  fun () ->
    (
# 145 "parser.mly"
             ( Pwild )
# 1351 "parser.ml"
     : (Ast.pattern))

let _menhir_action_73 =
  fun n ->
    (
# 146 "parser.mly"
          ( Pcst n )
# 1359 "parser.ml"
     : (Ast.pattern))

let _menhir_action_74 =
  fun ps ->
    (
# 147 "parser.mly"
                             ( Ptuple ps )
# 1367 "parser.ml"
     : (Ast.pattern))

let _menhir_action_75 =
  fun cname ps ->
    (
# 148 "parser.mly"
                               ( Pconstr(cname, ps) )
# 1375 "parser.ml"
     : (Ast.pattern))

let _menhir_action_76 =
  fun x ->
    (
# 149 "parser.mly"
            ( Pvar x )
# 1383 "parser.ml"
     : (Ast.pattern))

let _menhir_action_77 =
  fun p rest ->
    (
# 152 "parser.mly"
                                   ( p :: rest )
# 1391 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_78 =
  fun x ->
    (
# 50 "parser.mly"
    ( Texn x )
# 1399 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_79 =
  fun c ty x ->
    (
# 52 "parser.mly"
    ( Tdatatype (ty, x, c) )
# 1407 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_80 =
  fun c x ->
    (
# 54 "parser.mly"
    ( Ttype (x, c) )
# 1415 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_81 =
  fun d ->
    (
# 56 "parser.mly"
    ( Tdef d )
# 1423 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_82 =
  fun s ->
    (
# 58 "parser.mly"
    ( Tgospel_spec s )
# 1431 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_83 =
  fun t ->
    (
# 86 "parser.mly"
                        ( t )
# 1439 "parser.ml"
     : (Ast.typ))

let _menhir_action_84 =
  fun t1 t2 ->
    (
# 87 "parser.mly"
                        ( TyApp (t1, [t2]) )
# 1447 "parser.ml"
     : (Ast.typ))

let _menhir_action_85 =
  fun rest ty ->
    (
# 62 "parser.mly"
                               ( ty :: rest )
# 1455 "parser.ml"
     : (string list))

let _menhir_action_86 =
  fun () ->
    (
# 63 "parser.mly"
  ( [] )
# 1463 "parser.ml"
     : (string list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ANDALSO ->
        "ANDALSO"
    | ARROW ->
        "ARROW"
    | ASSIGN ->
        "ASSIGN"
    | ASSIGN_REF ->
        "ASSIGN_REF"
    | BADD ->
        "BADD"
    | BDIV ->
        "BDIV"
    | BEQ ->
        "BEQ"
    | BGE ->
        "BGE"
    | BGT ->
        "BGT"
    | BLE ->
        "BLE"
    | BLT ->
        "BLT"
    | BMINUS ->
        "BMINUS"
    | BMOD ->
        "BMOD"
    | BMUL ->
        "BMUL"
    | BNEQ ->
        "BNEQ"
    | BSUB ->
        "BSUB"
    | CASE ->
        "CASE"
    | COMMA ->
        "COMMA"
    | DATATYPE ->
        "DATATYPE"
    | DEREF ->
        "DEREF"
    | ELSE ->
        "ELSE"
    | END ->
        "END"
    | EOF ->
        "EOF"
    | EXCEPTION ->
        "EXCEPTION"
    | FALSE ->
        "FALSE"
    | FUN ->
        "FUN"
    | GOSPEL_COMMENT _ ->
        "GOSPEL_COMMENT"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | IN ->
        "IN"
    | LCURLY ->
        "LCURLY"
    | LET ->
        "LET"
    | LPAR ->
        "LPAR"
    | NUM _ ->
        "NUM"
    | OF ->
        "OF"
    | ORELSE ->
        "ORELSE"
    | PIPE ->
        "PIPE"
    | PRINT ->
        "PRINT"
    | RAISE ->
        "RAISE"
    | RCURLY ->
        "RCURLY"
    | REF ->
        "REF"
    | RPAR ->
        "RPAR"
    | SEMICOLON ->
        "SEMICOLON"
    | THEN ->
        "THEN"
    | TRUE ->
        "TRUE"
    | TYPE ->
        "TYPE"
    | TYVAR _ ->
        "TYVAR"
    | UNDERSCORE ->
        "UNDERSCORE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_156 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let items = _v in
      let _v = _menhir_action_50 items in
      MenhirBox_file _v
  
  let rec _menhir_run_154 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_toplevel -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_toplevel (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_59 x xs in
      _menhir_goto_list_toplevel_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_toplevel_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_156 _menhir_stack _v
      | MenhirState153 ->
          _menhir_run_154 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TYPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState001 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_002 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_x_, _startpos_x_, x) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_51 _endpos_x_ _startpos_x_ x in
      _menhir_goto_ident _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_ident : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState149 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState133 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState014 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState143 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_143 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState143
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState143
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | PIPE | TYPE ->
          let _v_2 = _menhir_action_52 () in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let ty = _v in
      let _v = _menhir_action_13 ty in
      _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_atyp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState145 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState143 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_145 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState145
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState145
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | PIPE | TYPE ->
          let _v_2 = _menhir_action_52 () in
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_006 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState006 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_146 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_atyp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_53 x xs in
      _menhir_goto_list_atyp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_atyp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState145 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState143 ->
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_144 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_18 args cname in
      _menhir_goto_constructor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_constructor : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState149 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_150 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constructor (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let _v_0 = _menhir_action_63 () in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_149 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_constructor as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PIPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState149 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_constructor -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_constructor (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_PIPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_62 c rest in
      _menhir_goto_more_constructors _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_more_constructors : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_constructor as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState148 ->
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState150 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_152 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_constructor (_menhir_stack, _, c) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_19 c rest in
      let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
      let MenhirCell1_tyvar_list (_menhir_stack, _, ty) = _menhir_stack in
      let MenhirCell1_DATATYPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let c = _v in
      let _v = _menhir_action_79 c ty x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_toplevel : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_toplevel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYPE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | GOSPEL_COMMENT _v_0 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState153
      | FUN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | EXCEPTION ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | DATATYPE ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | EOF ->
          let _v_1 = _menhir_action_58 () in
          _menhir_run_154 _menhir_stack _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_82 s in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState014 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState135 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_137 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATATYPE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137
      | IDENT _ ->
          let _v = _menhir_action_86 () in
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_TYVAR (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState138
      | IDENT _ ->
          let _v_1 = _menhir_action_86 () in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_TYVAR -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TYVAR (_menhir_stack, _menhir_s, ty) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_85 rest ty in
      _menhir_goto_tyvar_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_tyvar_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState137 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_140 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_tyvar_list (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState140
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_148 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constructor (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let _v_0 = _menhir_action_63 () in
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState010
      | LPAR ->
          let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState010
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | RPAR | TYPE ->
          let t = _v in
          let _v = _menhir_action_83 t in
          _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState004 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState010 ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState006 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_012 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
      let MenhirCell1_TYPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let c = _v in
      let _v = _menhir_action_80 c x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_atyp (_menhir_stack, _menhir_s, t1) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_84 t1 t2 in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_007 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_15 t in
          _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState142 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_78 x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_133 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState133
      | ASSIGN ->
          let _v_1 = _menhir_action_56 () in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_57 x xs in
      _menhir_goto_list_ident_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ident_ : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState133 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState015 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_016 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ident_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState017 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_02 () in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_aexpr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState082 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_082 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState082
      | LPAR ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState082
      | FALSE ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | ANDALSO | ASSIGN_REF | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IF | IN | LET | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TYPE ->
          let x = _v in
          let _v = _menhir_action_66 x in
          _menhir_goto_nonempty_list_aexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_01 n in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState023 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState019 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RAISE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState020 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState024 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState027 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_46 s in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState017 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_132 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let MenhirCell1_list_ident_ (_menhir_stack, _, args) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _menhir_s) = _menhir_stack in
          let s = _v in
          let _v = _menhir_action_20 args s x in
          let d = _v in
          let _v = _menhir_action_81 d in
          _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ORELSE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState041 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_03 () in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_030 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DEREF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState030 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CASE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState031 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState032 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState043 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BNEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState051 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMUL (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState045 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMOD (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState053 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState047 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BLT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState060 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BLE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState062 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BGT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState064 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BGE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState066 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BDIV (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState056 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BADD (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState058 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ASSIGN_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState049 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDALSO (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_24 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_130 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | COMMA ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BSUB ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_05 e in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState072 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_128 : type  ttv_stack. (((((ttv_stack, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_42 e1 e2 x in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | _ ->
          _eRR ()
  
  and _menhir_run_126 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | IN ->
          let _menhir_stack = MenhirCell1_IN (_menhir_stack, MenhirState126) in
          let _menhir_s = MenhirState127 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | REF ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GOSPEL_COMMENT _v ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | BSUB ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. ((((((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, s1) = _menhir_stack in
          let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let s2 = _v in
          let _v = _menhir_action_41 e s1 s2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_123 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState123) in
          let _menhir_s = MenhirState124 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | REF ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GOSPEL_COMMENT _v ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | BSUB ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | _ ->
          _eRR ()
  
  and _menhir_run_121 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState121) in
          let _menhir_s = MenhirState122 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | REF ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GOSPEL_COMMENT _v ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BSUB ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
      | _ ->
          _eRR ()
  
  and _menhir_run_120 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_DEREF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | ANDALSO | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_DEREF (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_25 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_pattern (_menhir_stack, _menhir_s, p) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_16 e p in
          _menhir_goto_case_clause _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_case_clause : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_117 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_case_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | ANDALSO | ASSIGN_REF | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let _v_0 = _menhir_action_61 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_116 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PIPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState116 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_72 () in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_pattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState116 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ARROW ->
          let _menhir_s = MenhirState112 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | REF ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GOSPEL_COMMENT _v ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RPAR ->
          let _v_0 = _menhir_action_65 () in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState095 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_70 () in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_089 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_73 n in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_090 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState090 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_71 () in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_097 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_pattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_pattern (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell1_COMMA (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_64 p rest in
      _menhir_goto_more_patterns _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_more_patterns : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState094 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_110 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_pattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_pattern (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_77 p rest in
      _menhir_goto_pattern_seq _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_pattern_seq : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState090 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_103 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_12 ps in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_apattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | TRUE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState108
      | LPAR ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState108
      | FALSE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | ARROW | COMMA | RPAR ->
          let x = _v in
          let _v = _menhir_action_68 x in
          _menhir_goto_nonempty_list_apattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_09 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_100 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_07 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_101 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_10 n in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_102 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState102 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_105 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_08 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nonempty_list_apattern_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState098 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_109 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_69 x xs in
      _menhir_goto_nonempty_list_apattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_106 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_75 cname ps in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_092 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_74 ps in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_094 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RPAR ->
          let _v_0 = _menhir_action_65 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_case_clause -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_case_clause (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_PIPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_60 c rest in
      _menhir_goto_more_case_clauses _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_more_case_clauses : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState115 ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_119 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_cell1_case_clause -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_case_clause (_menhir_stack, _, c) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_17 c rest in
      let MenhirCell1_OF (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_CASE (_menhir_stack, _menhir_s) = _menhir_stack in
      let cs = _v in
      let _v = _menhir_action_45 cs e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_115 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_case_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | ANDALSO | ASSIGN_REF | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let _v_0 = _menhir_action_61 () in
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_085 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_CASE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | OF ->
          let _menhir_stack = MenhirCell1_OF (_menhir_stack, MenhirState085) in
          let _menhir_s = MenhirState086 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | BSUB ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ANDALSO | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BSUB (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_26 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | NUM _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState079
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState079
      | GOSPEL_COMMENT _v_2 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState079
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BSUB ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | RPAR ->
          let _v_3 = _menhir_action_54 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState075 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOSPEL_COMMENT _v ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_55 x xs in
      _menhir_goto_list_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState079 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState039 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_035 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _menhir_s, f) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_23 args f in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_076 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | CASE | DEREF | FALSE | GOSPEL_COMMENT _ | IDENT _ | IF | LET | LPAR | NUM _ | RAISE | REF | RPAR | TRUE ->
          let MenhirCell1_BSUB (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_26 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | COMMA ->
          let MenhirCell1_BSUB (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_28 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | COMMA ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BSUB ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | RPAR ->
          let _v_0 = _menhir_action_49 () in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_COMMA (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_48 e rest in
      _menhir_goto_expr_seq_tail _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_expr_seq_tail : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState130 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState039 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState073 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_47 e rest in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let es = _v in
      let _v = _menhir_action_06 es in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_071 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | ANDALSO | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_ANDALSO (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_33 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ANDALSO | BEQ | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_35 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ANDALSO | BEQ | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BGE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_40 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | ANDALSO | BEQ | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BGT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_38 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | ANDALSO | BEQ | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BLE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_39 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | ANDALSO | BEQ | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BLT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_37 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | ANDALSO | BADD | BEQ | BGE | BGT | BLE | BLT | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BADD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_27 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | ANDALSO | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BDIV (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_30 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | ANDALSO | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BMOD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_32 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | ANDALSO | BEQ | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BNEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_36 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_ASSIGN_REF (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_44 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | ANDALSO | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BMINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_31 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ANDALSO | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BMUL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_29 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | ANDALSO | BADD | BEQ | BGE | BGT | BLE | BLT | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_BSUB (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_28 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | ANDALSO | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | NUM _ | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TRUE | TYPE ->
          let MenhirCell1_ORELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_34 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | RPAR ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REF ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | RAISE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | ORELSE ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | NUM _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState039
      | LPAR ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LET ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | IF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState039
      | GOSPEL_COMMENT _v_2 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState039
      | FALSE ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | DEREF ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | COMMA ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | CASE ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BSUB ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BNEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BMUL ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BMOD ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BMINUS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BLT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BLE ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BGT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BGE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BDIV ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BADD ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | ANDALSO ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_aexpr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState033 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_083 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_aexpr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_aexpr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_67 x xs in
      _menhir_goto_nonempty_list_aexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_22 args cname in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let e = _v in
      let _v = _menhir_action_21 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_107 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_11 x in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_098 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState098
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState098
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | ARROW | COMMA | RPAR ->
          let x = _v in
          let _v = _menhir_action_76 x in
          _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_04 x in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_033 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState033
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState033) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | REF ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | RAISE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | NUM _v_1 ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState034
          | LPAR ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | LET ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | IF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | IDENT _v_2 ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState034
          | GOSPEL_COMMENT _v_3 ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState034
          | FALSE ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | DEREF ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | CASE ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | BSUB ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
          | RPAR ->
              let _v_4 = _menhir_action_54 () in
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4
          | _ ->
              _eRR ())
      | IDENT _v_5 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState033
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | ANDALSO | ASSIGN_REF | BADD | BDIV | BEQ | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IF | IN | LET | OF | ORELSE | PIPE | RAISE | REF | RPAR | THEN | TYPE ->
          let x = _v in
          let _v = _menhir_action_04 x in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState026 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | REF ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GOSPEL_COMMENT _v ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RAISE -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_RAISE (_menhir_stack, _menhir_s) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_43 x in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_015 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState015
      | ASSIGN ->
          let _v_1 = _menhir_action_56 () in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState015
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_14 x in
      _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_003 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_TYPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState004 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TYVAR _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAR ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYPE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | GOSPEL_COMMENT _v ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | FUN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EXCEPTION ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | DATATYPE ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EOF ->
          let _v = _menhir_action_58 () in
          _menhir_run_156 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
