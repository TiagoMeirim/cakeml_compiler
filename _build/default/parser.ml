
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | VAL
    | UNDERSCORE
    | TYVAR of (
# 16 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | TYPE
    | TRUE
    | THEN
    | STRING of (
# 10 "parser.mly"
       (string)
# 25 "parser.ml"
  )
    | SEMICOLON
    | RSBRACKET
    | RPAR
    | REF
    | RAISE
    | PRINT
    | PIPE
    | ORELSE
    | OF
    | NUM of (
# 8 "parser.mly"
       (int)
# 39 "parser.ml"
  )
    | LSBRACKET
    | LPAR
    | LET
    | IN
    | IF
    | IDENT of (
# 9 "parser.mly"
       (string)
# 49 "parser.ml"
  )
    | GOSPEL_COMMENT of (
# 30 "parser.mly"
       (string)
# 54 "parser.ml"
  )
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
  
end

include MenhirBasics

# 1 "parser.mly"
  
    open Ast

    let mk_id id startpos endpos =
      { loc = (startpos, endpos); id }

# 96 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_file) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: file. *)

  | MenhirState001 : (('s, _menhir_box_file) _menhir_cell1_VAL, _menhir_box_file) _menhir_state
    (** State 001.
        Stack shape : VAL.
        Start symbol: file. *)

  | MenhirState004 : ((('s, _menhir_box_file) _menhir_cell1_VAL, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 004.
        Stack shape : VAL ident.
        Start symbol: file. *)

  | MenhirState006 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 006.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState010 : (('s, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 010.
        Stack shape : atyp.
        Start symbol: file. *)

  | MenhirState012 : (((('s, _menhir_box_file) _menhir_cell1_VAL, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 012.
        Stack shape : VAL ident atyp.
        Start symbol: file. *)

  | MenhirState015 : (('s, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_state
    (** State 015.
        Stack shape : TYPE.
        Start symbol: file. *)

  | MenhirState017 : ((('s, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 017.
        Stack shape : TYPE ident.
        Start symbol: file. *)

  | MenhirState018 : (((('s, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_typ, _menhir_box_file) _menhir_state
    (** State 018.
        Stack shape : TYPE ident typ.
        Start symbol: file. *)

  | MenhirState021 : (('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_state
    (** State 021.
        Stack shape : FUN.
        Start symbol: file. *)

  | MenhirState022 : ((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 022.
        Stack shape : FUN ident.
        Start symbol: file. *)

  | MenhirState024 : (((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_, _menhir_box_file) _menhir_state
    (** State 024.
        Stack shape : FUN ident list(ident).
        Start symbol: file. *)

  | MenhirState027 : (('s, _menhir_box_file) _menhir_cell1_REF, _menhir_box_file) _menhir_state
    (** State 027.
        Stack shape : REF.
        Start symbol: file. *)

  | MenhirState028 : (('s, _menhir_box_file) _menhir_cell1_RAISE, _menhir_box_file) _menhir_state
    (** State 028.
        Stack shape : RAISE.
        Start symbol: file. *)

  | MenhirState030 : (('s, _menhir_box_file) _menhir_cell1_PRINT, _menhir_box_file) _menhir_state
    (** State 030.
        Stack shape : PRINT.
        Start symbol: file. *)

  | MenhirState032 : (('s, _menhir_box_file) _menhir_cell1_LSBRACKET, _menhir_box_file) _menhir_state
    (** State 032.
        Stack shape : LSBRACKET.
        Start symbol: file. *)

  | MenhirState034 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 034.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState037 : (('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_state
    (** State 037.
        Stack shape : LET.
        Start symbol: file. *)

  | MenhirState039 : ((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 039.
        Stack shape : LET ident.
        Start symbol: file. *)

  | MenhirState040 : (('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_state
    (** State 040.
        Stack shape : IF.
        Start symbol: file. *)

  | MenhirState041 : (('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_state
    (** State 041.
        Stack shape : FUN.
        Start symbol: file. *)

  | MenhirState043 : ((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_nonempty_list_ident_, _menhir_box_file) _menhir_state
    (** State 043.
        Stack shape : FUN nonempty_list(ident).
        Start symbol: file. *)

  | MenhirState045 : (('s, _menhir_box_file) _menhir_cell1_DEREF, _menhir_box_file) _menhir_state
    (** State 045.
        Stack shape : DEREF.
        Start symbol: file. *)

  | MenhirState046 : (('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_state
    (** State 046.
        Stack shape : CASE.
        Start symbol: file. *)

  | MenhirState047 : (('s, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 047.
        Stack shape : BSUB.
        Start symbol: file. *)

  | MenhirState048 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 048.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState049 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_state
    (** State 049.
        Stack shape : ident DOT.
        Start symbol: file. *)

  | MenhirState050 : (((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 050.
        Stack shape : ident DOT ident.
        Start symbol: file. *)

  | MenhirState052 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 052.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState053 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_state
    (** State 053.
        Stack shape : ident DOT.
        Start symbol: file. *)

  | MenhirState055 : (('s, _menhir_box_file) _menhir_cell1_aexpr, _menhir_box_file) _menhir_state
    (** State 055.
        Stack shape : aexpr.
        Start symbol: file. *)

  | MenhirState058 : ((('s, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 058.
        Stack shape : BSUB expr.
        Start symbol: file. *)

  | MenhirState059 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_CONS, _menhir_box_file) _menhir_state
    (** State 059.
        Stack shape : expr CONS.
        Start symbol: file. *)

  | MenhirState060 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_CONS, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 060.
        Stack shape : expr CONS expr.
        Start symbol: file. *)

  | MenhirState061 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF, _menhir_box_file) _menhir_state
    (** State 061.
        Stack shape : expr ASSIGN_REF.
        Start symbol: file. *)

  | MenhirState062 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 062.
        Stack shape : expr ASSIGN_REF expr.
        Start symbol: file. *)

  | MenhirState063 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE, _menhir_box_file) _menhir_state
    (** State 063.
        Stack shape : expr ORELSE.
        Start symbol: file. *)

  | MenhirState064 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 064.
        Stack shape : expr ORELSE expr.
        Start symbol: file. *)

  | MenhirState065 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 065.
        Stack shape : expr BSUB.
        Start symbol: file. *)

  | MenhirState066 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 066.
        Stack shape : expr BSUB expr.
        Start symbol: file. *)

  | MenhirState067 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL, _menhir_box_file) _menhir_state
    (** State 067.
        Stack shape : expr BMUL.
        Start symbol: file. *)

  | MenhirState068 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 068.
        Stack shape : expr BMUL expr.
        Start symbol: file. *)

  | MenhirState069 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS, _menhir_box_file) _menhir_state
    (** State 069.
        Stack shape : expr BMINUS.
        Start symbol: file. *)

  | MenhirState070 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 070.
        Stack shape : expr BMINUS expr.
        Start symbol: file. *)

  | MenhirState071 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN, _menhir_box_file) _menhir_state
    (** State 071.
        Stack shape : expr ASSIGN.
        Start symbol: file. *)

  | MenhirState072 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 072.
        Stack shape : expr ASSIGN expr.
        Start symbol: file. *)

  | MenhirState073 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ, _menhir_box_file) _menhir_state
    (** State 073.
        Stack shape : expr BNEQ.
        Start symbol: file. *)

  | MenhirState074 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 074.
        Stack shape : expr BNEQ expr.
        Start symbol: file. *)

  | MenhirState075 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD, _menhir_box_file) _menhir_state
    (** State 075.
        Stack shape : expr BMOD.
        Start symbol: file. *)

  | MenhirState076 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 076.
        Stack shape : expr BMOD expr.
        Start symbol: file. *)

  | MenhirState077 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_APPEND, _menhir_box_file) _menhir_state
    (** State 077.
        Stack shape : expr APPEND.
        Start symbol: file. *)

  | MenhirState078 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_APPEND, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 078.
        Stack shape : expr APPEND expr.
        Start symbol: file. *)

  | MenhirState080 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV, _menhir_box_file) _menhir_state
    (** State 080.
        Stack shape : expr BDIV.
        Start symbol: file. *)

  | MenhirState081 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 081.
        Stack shape : expr BDIV expr.
        Start symbol: file. *)

  | MenhirState082 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD, _menhir_box_file) _menhir_state
    (** State 082.
        Stack shape : expr BADD.
        Start symbol: file. *)

  | MenhirState083 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 083.
        Stack shape : expr BADD expr.
        Start symbol: file. *)

  | MenhirState084 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT, _menhir_box_file) _menhir_state
    (** State 084.
        Stack shape : expr BLT.
        Start symbol: file. *)

  | MenhirState085 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 085.
        Stack shape : expr BLT expr.
        Start symbol: file. *)

  | MenhirState086 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE, _menhir_box_file) _menhir_state
    (** State 086.
        Stack shape : expr BLE.
        Start symbol: file. *)

  | MenhirState087 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 087.
        Stack shape : expr BLE expr.
        Start symbol: file. *)

  | MenhirState088 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT, _menhir_box_file) _menhir_state
    (** State 088.
        Stack shape : expr BGT.
        Start symbol: file. *)

  | MenhirState089 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 089.
        Stack shape : expr BGT expr.
        Start symbol: file. *)

  | MenhirState090 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE, _menhir_box_file) _menhir_state
    (** State 090.
        Stack shape : expr BGE.
        Start symbol: file. *)

  | MenhirState091 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 091.
        Stack shape : expr BGE expr.
        Start symbol: file. *)

  | MenhirState092 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO, _menhir_box_file) _menhir_state
    (** State 092.
        Stack shape : expr ANDALSO.
        Start symbol: file. *)

  | MenhirState093 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 093.
        Stack shape : expr ANDALSO expr.
        Start symbol: file. *)

  | MenhirState094 : ((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 094.
        Stack shape : CASE expr.
        Start symbol: file. *)

  | MenhirState095 : (((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_state
    (** State 095.
        Stack shape : CASE expr OF.
        Start symbol: file. *)

  | MenhirState099 : (('s, _menhir_box_file) _menhir_cell1_LSBRACKET, _menhir_box_file) _menhir_state
    (** State 099.
        Stack shape : LSBRACKET.
        Start symbol: file. *)

  | MenhirState101 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 101.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState105 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 105.
        Stack shape : LPAR pattern.
        Start symbol: file. *)

  | MenhirState107 : ((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_state
    (** State 107.
        Stack shape : pattern COMMA.
        Start symbol: file. *)

  | MenhirState108 : (((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 108.
        Stack shape : pattern COMMA pattern.
        Start symbol: file. *)

  | MenhirState110 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 110.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState111 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_state
    (** State 111.
        Stack shape : ident DOT.
        Start symbol: file. *)

  | MenhirState112 : (((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 112.
        Stack shape : ident DOT ident.
        Start symbol: file. *)

  | MenhirState114 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 114.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState115 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_state
    (** State 115.
        Stack shape : ident DOT.
        Start symbol: file. *)

  | MenhirState116 : (((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 116.
        Stack shape : ident DOT ident.
        Start symbol: file. *)

  | MenhirState118 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 118.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState122 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 122.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState128 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 128.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState131 : (('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 131.
        Stack shape : pattern.
        Start symbol: file. *)

  | MenhirState132 : ((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 132.
        Stack shape : pattern expr.
        Start symbol: file. *)

  | MenhirState134 : ((((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_state
    (** State 134.
        Stack shape : CASE expr OF case_clause.
        Start symbol: file. *)

  | MenhirState135 : ((('s, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_state
    (** State 135.
        Stack shape : case_clause PIPE.
        Start symbol: file. *)

  | MenhirState136 : (((('s, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_state
    (** State 136.
        Stack shape : case_clause PIPE case_clause.
        Start symbol: file. *)

  | MenhirState139 : ((('s, _menhir_box_file) _menhir_cell1_DEREF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 139.
        Stack shape : DEREF expr.
        Start symbol: file. *)

  | MenhirState140 : (((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_nonempty_list_ident_, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 140.
        Stack shape : FUN nonempty_list(ident) expr.
        Start symbol: file. *)

  | MenhirState141 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 141.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState143 : ((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 143.
        Stack shape : IF expr.
        Start symbol: file. *)

  | MenhirState144 : (((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_state
    (** State 144.
        Stack shape : IF expr THEN.
        Start symbol: file. *)

  | MenhirState145 : ((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 145.
        Stack shape : IF expr THEN expr.
        Start symbol: file. *)

  | MenhirState146 : (((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE, _menhir_box_file) _menhir_state
    (** State 146.
        Stack shape : IF expr THEN expr ELSE.
        Start symbol: file. *)

  | MenhirState147 : ((((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 147.
        Stack shape : IF expr THEN expr ELSE expr.
        Start symbol: file. *)

  | MenhirState148 : (((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 148.
        Stack shape : LET ident expr.
        Start symbol: file. *)

  | MenhirState149 : ((((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN, _menhir_box_file) _menhir_state
    (** State 149.
        Stack shape : LET ident expr IN.
        Start symbol: file. *)

  | MenhirState150 : (((((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 150.
        Stack shape : LET ident expr IN expr.
        Start symbol: file. *)

  | MenhirState152 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_state
    (** State 152.
        Stack shape : LPAR FUN.
        Start symbol: file. *)

  | MenhirState154 : (((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_nonempty_list_ident_, _menhir_box_file) _menhir_state
    (** State 154.
        Stack shape : LPAR FUN nonempty_list(ident).
        Start symbol: file. *)

  | MenhirState155 : ((((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_nonempty_list_ident_, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 155.
        Stack shape : LPAR FUN nonempty_list(ident) expr.
        Start symbol: file. *)

  | MenhirState159 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 159.
        Stack shape : LPAR expr.
        Start symbol: file. *)

  | MenhirState161 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_state
    (** State 161.
        Stack shape : expr COMMA.
        Start symbol: file. *)

  | MenhirState162 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 162.
        Stack shape : expr COMMA expr.
        Start symbol: file. *)

  | MenhirState168 : (('s, _menhir_box_file) _menhir_cell1_aexpr, _menhir_box_file) _menhir_state
    (** State 168.
        Stack shape : aexpr.
        Start symbol: file. *)

  | MenhirState171 : ((('s, _menhir_box_file) _menhir_cell1_REF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 171.
        Stack shape : REF expr.
        Start symbol: file. *)

  | MenhirState172 : ((((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 172.
        Stack shape : FUN ident list(ident) expr.
        Start symbol: file. *)

  | MenhirState173 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 173.
        Stack shape : ident ident.
        Start symbol: file. *)

  | MenhirState175 : (('s, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_state
    (** State 175.
        Stack shape : EXCEPTION.
        Start symbol: file. *)

  | MenhirState176 : ((('s, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 176.
        Stack shape : EXCEPTION ident.
        Start symbol: file. *)

  | MenhirState178 : (((('s, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 178.
        Stack shape : EXCEPTION ident atyp.
        Start symbol: file. *)

  | MenhirState180 : (('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_state
    (** State 180.
        Stack shape : DATATYPE.
        Start symbol: file. *)

  | MenhirState181 : (('s, _menhir_box_file) _menhir_cell1_TYVAR, _menhir_box_file) _menhir_state
    (** State 181.
        Stack shape : TYVAR.
        Start symbol: file. *)

  | MenhirState183 : ((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_state
    (** State 183.
        Stack shape : DATATYPE tyvar_list.
        Start symbol: file. *)

  | MenhirState185 : (((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 185.
        Stack shape : DATATYPE tyvar_list ident.
        Start symbol: file. *)

  | MenhirState186 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 186.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState188 : (('s, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 188.
        Stack shape : atyp.
        Start symbol: file. *)

  | MenhirState190 : ((((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor_list, _menhir_box_file) _menhir_state
    (** State 190.
        Stack shape : DATATYPE tyvar_list ident constructor_list.
        Start symbol: file. *)

  | MenhirState192 : ((((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_state
    (** State 192.
        Stack shape : DATATYPE tyvar_list ident constructor.
        Start symbol: file. *)

  | MenhirState193 : ((('s, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_state
    (** State 193.
        Stack shape : constructor PIPE.
        Start symbol: file. *)

  | MenhirState194 : (((('s, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_state
    (** State 194.
        Stack shape : constructor PIPE constructor.
        Start symbol: file. *)

  | MenhirState197 : (('s, _menhir_box_file) _menhir_cell1_toplevel, _menhir_box_file) _menhir_state
    (** State 197.
        Stack shape : toplevel.
        Start symbol: file. *)

  | MenhirState199 : (('s, _menhir_box_file) _menhir_cell1_def, _menhir_box_file) _menhir_state
    (** State 199.
        Stack shape : def.
        Start symbol: file. *)


and ('s, 'r) _menhir_cell1_aexpr = 
  | MenhirCell1_aexpr of 's * ('s, 'r) _menhir_state * (Ast.expr) * Lexing.position

and ('s, 'r) _menhir_cell1_apattern = 
  | MenhirCell1_apattern of 's * ('s, 'r) _menhir_state * (Ast.pattern) * Lexing.position

and ('s, 'r) _menhir_cell1_atyp = 
  | MenhirCell1_atyp of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_case_clause = 
  | MenhirCell1_case_clause of 's * ('s, 'r) _menhir_state * (Ast.case_clause)

and ('s, 'r) _menhir_cell1_constructor = 
  | MenhirCell1_constructor of 's * ('s, 'r) _menhir_state * (Ast.constructor)

and ('s, 'r) _menhir_cell1_constructor_list = 
  | MenhirCell1_constructor_list of 's * ('s, 'r) _menhir_state * (Ast.constructor list)

and ('s, 'r) _menhir_cell1_def = 
  | MenhirCell1_def of 's * ('s, 'r) _menhir_state * (Ast.def)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_ident = 
  | MenhirCell1_ident of 's * ('s, 'r) _menhir_state * (Ast.ident) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_list_ident_ = 
  | MenhirCell1_list_ident_ of 's * ('s, 'r) _menhir_state * (Ast.ident list)

and ('s, 'r) _menhir_cell1_nonempty_list_ident_ = 
  | MenhirCell1_nonempty_list_ident_ of 's * ('s, 'r) _menhir_state * (Ast.ident list)

and ('s, 'r) _menhir_cell1_pattern = 
  | MenhirCell1_pattern of 's * ('s, 'r) _menhir_state * (Ast.pattern)

and ('s, 'r) _menhir_cell1_toplevel = 
  | MenhirCell1_toplevel of 's * ('s, 'r) _menhir_state * (Ast.toplevel)

and ('s, 'r) _menhir_cell1_typ = 
  | MenhirCell1_typ of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_tyvar_list = 
  | MenhirCell1_tyvar_list of 's * ('s, 'r) _menhir_state * (string list)

and ('s, 'r) _menhir_cell1_ANDALSO = 
  | MenhirCell1_ANDALSO of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_APPEND = 
  | MenhirCell1_APPEND of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ASSIGN = 
  | MenhirCell1_ASSIGN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ASSIGN_REF = 
  | MenhirCell1_ASSIGN_REF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BADD = 
  | MenhirCell1_BADD of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BDIV = 
  | MenhirCell1_BDIV of 's * ('s, 'r) _menhir_state

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

and ('s, 'r) _menhir_cell1_CONS = 
  | MenhirCell1_CONS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DATATYPE = 
  | MenhirCell1_DATATYPE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DEREF = 
  | MenhirCell1_DEREF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DOT = 
  | MenhirCell1_DOT of 's * ('s, 'r) _menhir_state

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

and ('s, 'r) _menhir_cell1_LSBRACKET = 
  | MenhirCell1_LSBRACKET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OF = 
  | MenhirCell1_OF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ORELSE = 
  | MenhirCell1_ORELSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PIPE = 
  | MenhirCell1_PIPE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PRINT = 
  | MenhirCell1_PRINT of 's * ('s, 'r) _menhir_state

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
# 16 "parser.mly"
       (string)
# 875 "parser.ml"
)

and ('s, 'r) _menhir_cell1_VAL = 
  | MenhirCell1_VAL of 's * ('s, 'r) _menhir_state

and _menhir_box_file = 
  | MenhirBox_file of (Ast.file) [@@unboxed]

let _menhir_action_001 =
  fun n ->
    (
# 104 "parser.mly"
          ( Ecst n )
# 889 "parser.ml"
     : (Ast.expr))

let _menhir_action_002 =
  fun () ->
    (
# 105 "parser.mly"
       ( Ebool true )
# 897 "parser.ml"
     : (Ast.expr))

let _menhir_action_003 =
  fun () ->
    (
# 106 "parser.mly"
        ( Ebool false )
# 905 "parser.ml"
     : (Ast.expr))

let _menhir_action_004 =
  fun s ->
    (
# 107 "parser.mly"
             ( Estring s )
# 913 "parser.ml"
     : (Ast.expr))

let _menhir_action_005 =
  fun x ->
    (
# 108 "parser.mly"
            ( Evar x )
# 921 "parser.ml"
     : (Ast.expr))

let _menhir_action_006 =
  fun () ->
    (
# 109 "parser.mly"
            ( Eunit )
# 929 "parser.ml"
     : (Ast.expr))

let _menhir_action_007 =
  fun e ->
    (
# 110 "parser.mly"
                     ( e )
# 937 "parser.ml"
     : (Ast.expr))

let _menhir_action_008 =
  fun es ->
    (
# 111 "parser.mly"
                          ( Etuple es )
# 945 "parser.ml"
     : (Ast.expr))

let _menhir_action_009 =
  fun args e ->
    (
# 112 "parser.mly"
                                             ( Efun (args, e) )
# 953 "parser.ml"
     : (Ast.expr))

let _menhir_action_010 =
  fun () ->
    (
# 113 "parser.mly"
                      ( Enil )
# 961 "parser.ml"
     : (Ast.expr))

let _menhir_action_011 =
  fun l ->
    (
# 114 "parser.mly"
                                        ( Elist l )
# 969 "parser.ml"
     : (Ast.expr))

let _menhir_action_012 =
  fun _endpos_x_ _startpos_m_ m x ->
    let _endpos = _endpos_x_ in
    let _startpos = _startpos_m_ in
    (
# 115 "parser.mly"
                          ( Evar { id = m.id ^ "." ^ x.id; loc = (_startpos, _endpos) } )
# 979 "parser.ml"
     : (Ast.expr))

let _menhir_action_013 =
  fun () ->
    (
# 156 "parser.mly"
       ( Pbool true )
# 987 "parser.ml"
     : (Ast.pattern))

let _menhir_action_014 =
  fun () ->
    (
# 157 "parser.mly"
        ( Pbool false )
# 995 "parser.ml"
     : (Ast.pattern))

let _menhir_action_015 =
  fun () ->
    (
# 158 "parser.mly"
             ( Pwild )
# 1003 "parser.ml"
     : (Ast.pattern))

let _menhir_action_016 =
  fun n ->
    (
# 159 "parser.mly"
          ( Pcst n )
# 1011 "parser.ml"
     : (Ast.pattern))

let _menhir_action_017 =
  fun x ->
    (
# 160 "parser.mly"
            ( Pvar x )
# 1019 "parser.ml"
     : (Ast.pattern))

let _menhir_action_018 =
  fun p ->
    (
# 161 "parser.mly"
                        ( p )
# 1027 "parser.ml"
     : (Ast.pattern))

let _menhir_action_019 =
  fun ps ->
    (
# 162 "parser.mly"
                             ( Ptuple ps )
# 1035 "parser.ml"
     : (Ast.pattern))

let _menhir_action_020 =
  fun () ->
    (
# 163 "parser.mly"
                      ( Pnil )
# 1043 "parser.ml"
     : (Ast.pattern))

let _menhir_action_021 =
  fun l ->
    (
# 164 "parser.mly"
                                       ( Plist l )
# 1051 "parser.ml"
     : (Ast.pattern))

let _menhir_action_022 =
  fun _endpos_ps_ _startpos_m_ m ps x ->
    let _endpos = _endpos_ps_ in
    let _startpos = _startpos_m_ in
    (
# 165 "parser.mly"
                                         ( Pqconstr ({ modname = m; field = x; loc = (_startpos, _endpos) }, ps) )
# 1061 "parser.ml"
     : (Ast.pattern))

let _menhir_action_023 =
  fun ty ->
    (
# 87 "parser.mly"
                        ( TyVar ty )
# 1069 "parser.ml"
     : (Ast.typ))

let _menhir_action_024 =
  fun x ->
    (
# 88 "parser.mly"
                        ( TyName x )
# 1077 "parser.ml"
     : (Ast.typ))

let _menhir_action_025 =
  fun t ->
    (
# 89 "parser.mly"
                        ( t )
# 1085 "parser.ml"
     : (Ast.typ))

let _menhir_action_026 =
  fun e p ->
    (
# 146 "parser.mly"
                             ( (p, e) )
# 1093 "parser.ml"
     : (Ast.case_clause))

let _menhir_action_027 =
  fun c rest ->
    (
# 149 "parser.mly"
                                           ( c :: rest )
# 1101 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_028 =
  fun args cname ->
    (
# 82 "parser.mly"
                             ( { cname = cname; args = args } )
# 1109 "parser.ml"
     : (Ast.constructor))

let _menhir_action_029 =
  fun c rest ->
    (
# 73 "parser.mly"
                                           ( c :: rest )
# 1117 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_030 =
  fun args s x ->
    (
# 99 "parser.mly"
      ( { name = x; formals = args; body = s } )
# 1125 "parser.ml"
     : (Ast.def))

let _menhir_action_031 =
  fun e ->
    (
# 119 "parser.mly"
            ( e )
# 1133 "parser.ml"
     : (Ast.expr))

let _menhir_action_032 =
  fun e ->
    (
# 120 "parser.mly"
                  ( Eprint e )
# 1141 "parser.ml"
     : (Ast.expr))

let _menhir_action_033 =
  fun args f ->
    (
# 122 "parser.mly"
    ( if Char.uppercase_ascii f.id.[0] = f.id.[0]
    then Econstr(f, args)
    else Ecall(f, args) )
# 1151 "parser.ml"
     : (Ast.expr))

let _menhir_action_034 =
  fun e ->
    (
# 125 "parser.mly"
               ( Eref e )
# 1159 "parser.ml"
     : (Ast.expr))

let _menhir_action_035 =
  fun e ->
    (
# 126 "parser.mly"
                             ( Ederef e )
# 1167 "parser.ml"
     : (Ast.expr))

let _menhir_action_036 =
  fun e ->
    (
# 127 "parser.mly"
                             ( Eunop (Bminus, e) )
# 1175 "parser.ml"
     : (Ast.expr))

let _menhir_action_037 =
  fun e1 e2 ->
    let o = 
# 198 "parser.mly"
         ( Bassign )
# 1183 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1188 "parser.ml"
     : (Ast.expr))

let _menhir_action_038 =
  fun e1 e2 ->
    let o = 
# 199 "parser.mly"
       ( Badd )
# 1196 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1201 "parser.ml"
     : (Ast.expr))

let _menhir_action_039 =
  fun e1 e2 ->
    let o = 
# 200 "parser.mly"
       ( Bsub )
# 1209 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1214 "parser.ml"
     : (Ast.expr))

let _menhir_action_040 =
  fun e1 e2 ->
    let o = 
# 201 "parser.mly"
       ( Bmul )
# 1222 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1227 "parser.ml"
     : (Ast.expr))

let _menhir_action_041 =
  fun e1 e2 ->
    let o = 
# 202 "parser.mly"
       ( Bdiv )
# 1235 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1240 "parser.ml"
     : (Ast.expr))

let _menhir_action_042 =
  fun e1 e2 ->
    let o = 
# 203 "parser.mly"
         ( Bminus )
# 1248 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1253 "parser.ml"
     : (Ast.expr))

let _menhir_action_043 =
  fun e1 e2 ->
    let o = 
# 204 "parser.mly"
       ( Bmod )
# 1261 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1266 "parser.ml"
     : (Ast.expr))

let _menhir_action_044 =
  fun e1 e2 ->
    let o = 
# 205 "parser.mly"
           ( Bandalso )
# 1274 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1279 "parser.ml"
     : (Ast.expr))

let _menhir_action_045 =
  fun e1 e2 ->
    let o = 
# 206 "parser.mly"
           ( Borelse )
# 1287 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1292 "parser.ml"
     : (Ast.expr))

let _menhir_action_046 =
  fun e1 e2 ->
    let o = 
# 207 "parser.mly"
       ( Bneq )
# 1300 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1305 "parser.ml"
     : (Ast.expr))

let _menhir_action_047 =
  fun e1 e2 ->
    let o = 
# 208 "parser.mly"
       ( Blt )
# 1313 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1318 "parser.ml"
     : (Ast.expr))

let _menhir_action_048 =
  fun e1 e2 ->
    let o = 
# 209 "parser.mly"
       ( Bgt )
# 1326 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1331 "parser.ml"
     : (Ast.expr))

let _menhir_action_049 =
  fun e1 e2 ->
    let o = 
# 210 "parser.mly"
       ( Ble )
# 1339 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1344 "parser.ml"
     : (Ast.expr))

let _menhir_action_050 =
  fun e1 e2 ->
    let o = 
# 211 "parser.mly"
       ( Bge )
# 1352 "parser.ml"
     in
    (
# 128 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1357 "parser.ml"
     : (Ast.expr))

let _menhir_action_051 =
  fun e s1 s2 ->
    (
# 129 "parser.mly"
                                            ( Eif (e, s1, s2) )
# 1365 "parser.ml"
     : (Ast.expr))

let _menhir_action_052 =
  fun e1 e2 x ->
    (
# 130 "parser.mly"
                                                      ( Elet (x, e1, e2) )
# 1373 "parser.ml"
     : (Ast.expr))

let _menhir_action_053 =
  fun x ->
    (
# 131 "parser.mly"
                  ( Eraise x )
# 1381 "parser.ml"
     : (Ast.expr))

let _menhir_action_054 =
  fun e1 e2 ->
    (
# 132 "parser.mly"
                                 ( Eassign (e1, e2) )
# 1389 "parser.ml"
     : (Ast.expr))

let _menhir_action_055 =
  fun cs e ->
    (
# 133 "parser.mly"
                                     ( Ecase (e, cs) )
# 1397 "parser.ml"
     : (Ast.expr))

let _menhir_action_056 =
  fun e1 e2 ->
    (
# 134 "parser.mly"
                           ( Econs (e1, e2) )
# 1405 "parser.ml"
     : (Ast.expr))

let _menhir_action_057 =
  fun e1 e2 ->
    (
# 135 "parser.mly"
                             ( Eappend (e1, e2) )
# 1413 "parser.ml"
     : (Ast.expr))

let _menhir_action_058 =
  fun _endpos_args_ _startpos_m_ args f m ->
    let _endpos = _endpos_args_ in
    let _startpos = _startpos_m_ in
    (
# 137 "parser.mly"
    ( Eqcall ({ modname = m; field = f; loc = (_startpos, _endpos) }, args) )
# 1423 "parser.ml"
     : (Ast.expr))

let _menhir_action_059 =
  fun args e ->
    (
# 138 "parser.mly"
                                   ( Efun (args, e) )
# 1431 "parser.ml"
     : (Ast.expr))

let _menhir_action_060 =
  fun e rest ->
    (
# 189 "parser.mly"
                                ( e :: rest )
# 1439 "parser.ml"
     : (Ast.expr list))

let _menhir_action_061 =
  fun e rest ->
    (
# 193 "parser.mly"
                                      ( e :: rest )
# 1447 "parser.ml"
     : (Ast.expr list))

let _menhir_action_062 =
  fun () ->
    (
# 194 "parser.mly"
  ( [] )
# 1455 "parser.ml"
     : (Ast.expr list))

let _menhir_action_063 =
  fun items ->
    (
# 48 "parser.mly"
                        ( items )
# 1463 "parser.ml"
     : (Ast.file))

let _menhir_action_064 =
  fun _endpos_x_ _startpos_x_ x ->
    let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    (
# 215 "parser.mly"
            ( mk_id x _startpos _endpos )
# 1473 "parser.ml"
     : (Ast.ident))

let _menhir_action_065 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1481 "parser.ml"
     : (Ast.typ list))

let _menhir_action_066 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1489 "parser.ml"
     : (Ast.typ list))

let _menhir_action_067 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1497 "parser.ml"
     : (Ast.ident list))

let _menhir_action_068 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1505 "parser.ml"
     : (Ast.ident list))

let _menhir_action_069 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1513 "parser.ml"
     : (Ast.file))

let _menhir_action_070 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1521 "parser.ml"
     : (Ast.file))

let _menhir_action_071 =
  fun e ->
    (
# 142 "parser.mly"
            ( [e] )
# 1529 "parser.ml"
     : (Ast.expr list))

let _menhir_action_072 =
  fun e rest ->
    (
# 143 "parser.mly"
                                       ( e :: rest )
# 1537 "parser.ml"
     : (Ast.expr list))

let _menhir_action_073 =
  fun c rest ->
    (
# 152 "parser.mly"
                                                ( c :: rest )
# 1545 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_074 =
  fun () ->
    (
# 153 "parser.mly"
  ( [] )
# 1553 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_075 =
  fun c rest ->
    (
# 77 "parser.mly"
                                                ( c :: rest )
# 1561 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_076 =
  fun () ->
    (
# 78 "parser.mly"
  ( [] )
# 1569 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_077 =
  fun p rest ->
    (
# 184 "parser.mly"
                                         ( p :: rest )
# 1577 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_078 =
  fun () ->
    (
# 185 "parser.mly"
  ( [] )
# 1585 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_079 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1593 "parser.ml"
     : (Ast.expr list))

let _menhir_action_080 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1601 "parser.ml"
     : (Ast.expr list))

let _menhir_action_081 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1609 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_082 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1617 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_083 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1625 "parser.ml"
     : (Ast.ident list))

let _menhir_action_084 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1633 "parser.ml"
     : (Ast.ident list))

let _menhir_action_085 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1641 "parser.ml"
     : (unit option))

let _menhir_action_086 =
  fun x ->
    (
# 114 "<standard.mly>"
    ( Some x )
# 1649 "parser.ml"
     : (unit option))

let _menhir_action_087 =
  fun p ->
    (
# 169 "parser.mly"
               ( [p] )
# 1657 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_088 =
  fun p rest ->
    (
# 170 "parser.mly"
                                         ( p :: rest )
# 1665 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_089 =
  fun p ->
    (
# 173 "parser.mly"
               ( p )
# 1673 "parser.ml"
     : (Ast.pattern))

let _menhir_action_090 =
  fun cname ps ->
    (
# 174 "parser.mly"
                               ( Pconstr(cname, ps) )
# 1681 "parser.ml"
     : (Ast.pattern))

let _menhir_action_091 =
  fun p1 p2 ->
    (
# 175 "parser.mly"
                                  ( Pcons(p1, p2) )
# 1689 "parser.ml"
     : (Ast.pattern))

let _menhir_action_092 =
  fun _endpos_ps_ _startpos_m_ m ps x ->
    let _endpos = _endpos_ps_ in
    let _startpos = _startpos_m_ in
    (
# 176 "parser.mly"
                                         ( Pqconstr ({ modname = m; field = x; loc = (_startpos, _endpos) }, ps) )
# 1699 "parser.ml"
     : (Ast.pattern))

let _menhir_action_093 =
  fun p rest ->
    (
# 180 "parser.mly"
                                   ( p :: rest )
# 1707 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_094 =
  fun x ->
    (
# 53 "parser.mly"
    ( Texn (x, None) )
# 1715 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_095 =
  fun t x ->
    (
# 55 "parser.mly"
    ( Texn (x, Some t) )
# 1723 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_096 =
  fun c ty x ->
    (
# 57 "parser.mly"
    ( Tdatatype (ty, x, c) )
# 1731 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_097 =
  fun c x ->
    (
# 59 "parser.mly"
    ( Ttype (x, c) )
# 1739 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_098 =
  fun c x ->
    (
# 61 "parser.mly"
    ( Tval (x, c) )
# 1747 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_099 =
  fun d ->
    (
# 63 "parser.mly"
    ( Tdef d )
# 1755 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_100 =
  fun s ->
    (
# 65 "parser.mly"
    ( Tgospel_spec s )
# 1763 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_101 =
  fun t ->
    (
# 93 "parser.mly"
                        ( t )
# 1771 "parser.ml"
     : (Ast.typ))

let _menhir_action_102 =
  fun t1 t2 ->
    (
# 94 "parser.mly"
                        ( TyApp (t1, [t2]) )
# 1779 "parser.ml"
     : (Ast.typ))

let _menhir_action_103 =
  fun rest ty ->
    (
# 69 "parser.mly"
                               ( ty :: rest )
# 1787 "parser.ml"
     : (string list))

let _menhir_action_104 =
  fun () ->
    (
# 70 "parser.mly"
  ( [] )
# 1795 "parser.ml"
     : (string list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ANDALSO ->
        "ANDALSO"
    | APPEND ->
        "APPEND"
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
    | CONS ->
        "CONS"
    | DATATYPE ->
        "DATATYPE"
    | DEREF ->
        "DEREF"
    | DOT ->
        "DOT"
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
    | LET ->
        "LET"
    | LPAR ->
        "LPAR"
    | LSBRACKET ->
        "LSBRACKET"
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
    | REF ->
        "REF"
    | RPAR ->
        "RPAR"
    | RSBRACKET ->
        "RSBRACKET"
    | SEMICOLON ->
        "SEMICOLON"
    | STRING _ ->
        "STRING"
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
    | VAL ->
        "VAL"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_201 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let items = _v in
      let _v = _menhir_action_063 items in
      MenhirBox_file _v
  
  let rec _menhir_run_198 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_toplevel -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_toplevel (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_070 x xs in
      _menhir_goto_list_toplevel_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_toplevel_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_201 _menhir_stack _v
      | MenhirState197 ->
          _menhir_run_198 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_VAL (_menhir_stack, _menhir_s) in
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
      let _v = _menhir_action_064 _endpos_x_ _startpos_x_ x in
      _menhir_goto_ident _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _startpos_x_ _v _menhir_s _tok
  
  and _menhir_goto_ident : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState193 ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState183 ->
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState175 ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState173 ->
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState118 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState030 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState168 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState161 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState149 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState021 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState188 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState186 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState176 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_186 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState186
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState186
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState186
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | PIPE | SEMICOLON | TYPE | VAL ->
          let _v_2 = _menhir_action_065 () in
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let ty = _v in
      let _v = _menhir_action_023 ty in
      _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_atyp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState188 ->
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState186 ->
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState176 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_188 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState188
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState188
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | PIPE | SEMICOLON | TYPE | VAL ->
          let _v_2 = _menhir_action_065 () in
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
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
  
  and _menhir_run_189 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_atyp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_066 x xs in
      _menhir_goto_list_atyp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_atyp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState188 ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState186 ->
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_187 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname, _, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_028 args cname in
      _menhir_goto_constructor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_constructor : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState193 ->
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_194 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constructor (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState194
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | SEMICOLON | TYPE | VAL ->
          let _v_0 = _menhir_action_076 () in
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_193 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_constructor as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PIPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState193 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_195 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_constructor -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_constructor (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_PIPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_075 c rest in
      _menhir_goto_more_constructors _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_more_constructors : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_constructor as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState192 ->
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState194 ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_196 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_constructor (_menhir_stack, _menhir_s, c) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_029 c rest in
      let _menhir_stack = MenhirCell1_constructor_list (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE | VAL ->
          let _ = _menhir_action_085 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let x = () in
      let _ = _menhir_action_086 x in
      _menhir_goto_option_SEMICOLON_ _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
  
  and _menhir_goto_option_SEMICOLON_ : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok ->
      match _menhir_s with
      | MenhirState199 ->
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | MenhirState190 ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | MenhirState178 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | MenhirState176 ->
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | MenhirState018 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | MenhirState012 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_200 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_def -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_def (_menhir_stack, _menhir_s, d) = _menhir_stack in
      let _v = _menhir_action_099 d in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_toplevel : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_toplevel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VAL ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | TYPE ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | GOSPEL_COMMENT _v_0 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState197
      | FUN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | EXCEPTION ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | DATATYPE ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | EOF ->
          let _v_1 = _menhir_action_069 () in
          _menhir_run_198 _menhir_stack _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TYPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState015 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_100 s in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState021 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_175 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState175 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_180 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATATYPE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v ->
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState180
      | IDENT _ ->
          let _v = _menhir_action_104 () in
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState180 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_181 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_TYVAR (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState181
      | IDENT _ ->
          let _v_1 = _menhir_action_104 () in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_182 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_TYVAR -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TYVAR (_menhir_stack, _menhir_s, ty) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_103 rest ty in
      _menhir_goto_tyvar_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_tyvar_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState180 ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState181 ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_183 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_tyvar_list (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState183
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_191 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor_list -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_constructor_list (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_tyvar_list (_menhir_stack, _, ty) = _menhir_stack in
      let MenhirCell1_DATATYPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_096 c ty x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_179 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_atyp (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_095 t x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_177 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_094 x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_019 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_typ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_typ (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_TYPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_097 c x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_014 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_VAL, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_atyp (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_VAL (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_098 c x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_192 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constructor (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | SEMICOLON | TYPE | VAL ->
          let _v_0 = _menhir_action_076 () in
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_178 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState178
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE | VAL ->
          let _ = _menhir_action_085 () in
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_VAL, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE | VAL ->
          let _ = _menhir_action_085 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
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
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | RPAR | SEMICOLON | TYPE | VAL ->
          let t = _v in
          let _v = _menhir_action_101 t in
          _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState017 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState006 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_018 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_TYPE, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE | VAL ->
          let _ = _menhir_action_085 () in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_011 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_atyp (_menhir_stack, _menhir_s, t1) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_102 t1 t2 in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_007 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_025 t in
          _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_184 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState185 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_176 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState176
      | SEMICOLON ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState176
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE | VAL ->
          let _ = _menhir_action_085 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_173 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState173
      | ASSIGN ->
          let _v_1 = _menhir_action_067 () in
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_174 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_068 x xs in
      _menhir_goto_list_ident_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ident_ : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState173 ->
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState022 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_023 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ident_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState024 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _endpos__1_ = _endpos in
      let _v = _menhir_action_002 () in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_aexpr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState030 ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState168 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState161 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState149 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_170 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_PRINT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_PRINT (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_032 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState024 ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState161 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState149 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_172 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | SEMICOLON | TYPE | VAL ->
          let MenhirCell1_list_ident_ (_menhir_stack, _, args) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _menhir_s) = _menhir_stack in
          let s = _v in
          let _v = _menhir_action_030 args s x in
          let _menhir_stack = MenhirCell1_def (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | SEMICOLON ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
          | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE | VAL ->
              let _ = _menhir_action_085 () in
              _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
          | _ ->
              _menhir_fail ())
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ORELSE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState063 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_s_, s) = (_endpos, _v) in
      let _v = _menhir_action_004 s in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _v _menhir_s _tok
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState027 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RAISE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState028 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PRINT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState030 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_n_, n) = (_endpos, _v) in
      let _v = _menhir_action_001 n in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_n_ _v _menhir_s _tok
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | STRING _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | RSBRACKET ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _endpos__2_ = _endpos in
          let _v = _menhir_action_010 () in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _v _menhir_s _tok
      | NUM _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | LPAR ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | FALSE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | STRING _v ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | RPAR ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _endpos__2_ = _endpos in
          let _v = _menhir_action_006 () in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _v _menhir_s _tok
      | REF ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | RAISE ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PRINT ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NUM _v ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LPAR ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LET ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | IF ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | FUN ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState034) in
          let _menhir_s = MenhirState152 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | FALSE ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | DEREF ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | CASE ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BSUB ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAL ->
          let _menhir_s = MenhirState037 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState040 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState041 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _endpos__1_ = _endpos in
      let _v = _menhir_action_003 () in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_run_045 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DEREF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState045 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CASE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState046 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState047 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CONS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState059 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState065 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BNEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState073 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMUL (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState067 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMOD (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState075 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState069 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BLT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState084 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BLE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState086 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BGT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState088 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_090 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BGE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState090 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BDIV (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState080 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BADD (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState082 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ASSIGN_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState061 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ASSIGN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState071 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_APPEND (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState077 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDALSO (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState092 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_171 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_034 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_162 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | CONS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | COMMA ->
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BSUB ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BNEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BMUL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BMOD ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BMINUS ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BLT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BLE ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BGT ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BGE ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BDIV ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | BADD ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | ASSIGN_REF ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | ASSIGN ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | APPEND ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | ANDALSO ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | RPAR ->
          let _v_0 = _menhir_action_062 () in
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_161 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState161 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_163 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_COMMA (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_061 e rest in
      _menhir_goto_expr_seq_tail _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_expr_seq_tail : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState159 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState162 ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_164 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_060 e rest in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, es) = (_endpos, _v) in
      let _v = _menhir_action_008 es in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_run_159 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let (_endpos__3_, e) = (_endpos, _v) in
          let _v = _menhir_action_007 e in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | _ ->
          _eRR ()
  
  and _menhir_run_155 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_nonempty_list_ident_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_nonempty_list_ident_ (_menhir_stack, _, args) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let (_endpos__6_, e) = (_endpos, _v) in
          let _v = _menhir_action_009 args e in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__6_ _v _menhir_s _tok
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | COMMA ->
          let MenhirCell1_nonempty_list_ident_ (_menhir_stack, _, args) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_059 args e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_150 : type  ttv_stack. (((((ttv_stack, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_052 e1 e2 x in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | IN ->
          let _menhir_stack = MenhirCell1_IN (_menhir_stack, MenhirState148) in
          let _menhir_s = MenhirState149 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FALSE ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BSUB ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BNEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BMUL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BMOD ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BMINUS ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BLT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BLE ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BGT ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BGE ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BDIV ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | BADD ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | ASSIGN_REF ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | ASSIGN ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | APPEND ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | ANDALSO ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | _ ->
          _eRR ()
  
  and _menhir_run_147 : type  ttv_stack. ((((((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, s1) = _menhir_stack in
          let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let s2 = _v in
          let _v = _menhir_action_051 e s1 s2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState145) in
          let _menhir_s = MenhirState146 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FALSE ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BSUB ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BNEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BMUL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BMOD ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BMINUS ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BLT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BLE ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BGT ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BGE ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BDIV ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | BADD ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | ASSIGN_REF ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | ASSIGN ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | APPEND ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | ANDALSO ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState143) in
          let _menhir_s = MenhirState144 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FALSE ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | ORELSE ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | CONS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BSUB ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BNEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BMUL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BMOD ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BMINUS ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BLT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BLE ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BGT ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BGE ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BDIV ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BADD ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | ASSIGN_REF ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | ASSIGN ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | APPEND ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | ANDALSO ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | _ ->
          _eRR ()
  
  and _menhir_run_140 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_nonempty_list_ident_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_nonempty_list_ident_ (_menhir_stack, _, args) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_059 args e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_DEREF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_DEREF (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_035 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_132 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_pattern (_menhir_stack, _menhir_s, p) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_026 e p in
          _menhir_goto_case_clause _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_case_clause : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_136 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_case_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | CONS | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let _v_0 = _menhir_action_074 () in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_135 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PIPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState135 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _endpos__1_ = _endpos in
      let _v = _menhir_action_015 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_apattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState128 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState118 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_127 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          let _menhir_s = MenhirState128 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | RSBRACKET ->
          let p = _v in
          let _v = _menhir_action_087 p in
          _menhir_goto_pat_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _endpos__1_ = _endpos in
      let _v = _menhir_action_013 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_run_098 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_n_, n) = (_endpos, _v) in
      let _v = _menhir_action_016 n in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_n_ _v _menhir_s _tok
  
  and _menhir_run_099 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | TRUE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | RSBRACKET ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _endpos__2_ = _endpos in
          let _v = _menhir_action_020 () in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _v _menhir_s _tok
      | NUM _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState099
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | LPAR ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState099
      | FALSE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState101 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _endpos__1_ = _endpos in
      let _v = _menhir_action_014 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_pat_elements : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState128 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState099 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_129 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, p, _) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_088 p rest in
      _menhir_goto_pat_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_125 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LSBRACKET -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, l) = (_endpos, _v) in
      let _v = _menhir_action_021 l in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_run_121 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          let _menhir_s = MenhirState122 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | ARROW | COMMA | RPAR ->
          let p = _v in
          let _v = _menhir_action_089 p in
          _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_pattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState135 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState107 ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_130 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ARROW ->
          let _menhir_s = MenhirState131 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FALSE ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_123 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, p1, _) = _menhir_stack in
      let p2 = _v in
      let _v = _menhir_action_091 p1 p2 in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_108 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | RPAR ->
          let _v_0 = _menhir_action_078 () in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState107 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_pattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_pattern (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell1_COMMA (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_077 p rest in
      _menhir_goto_more_patterns _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_more_patterns : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState105 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_124 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_pattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_pattern (_menhir_stack, _, p) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_093 p rest in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, ps) = (_endpos, _v) in
      let _v = _menhir_action_019 ps in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_run_105 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let (_endpos__3_, p) = (_endpos, _v) in
          let _v = _menhir_action_018 p in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
      | COMMA ->
          let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | TRUE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState118
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | LPAR ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState118
      | FALSE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | ARROW | COMMA | CONS | RPAR | RSBRACKET ->
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_081 x in
          _menhir_goto_nonempty_list_apattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_apattern_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState110 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState118 ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_120 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname, _, _) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_090 cname ps in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_119 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let (_endpos_xs_, xs) = (_endpos, _v) in
      let _v = _menhir_action_082 x xs in
      _menhir_goto_nonempty_list_apattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_xs_ _v _menhir_s _tok
  
  and _menhir_run_117 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _menhir_s, m, _startpos_m_, _) = _menhir_stack in
      let (_endpos_ps_, ps) = (_endpos, _v) in
      let _v = _menhir_action_022 _endpos_ps_ _startpos_m_ m ps x in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ps_ _v _menhir_s _tok
  
  and _menhir_run_113 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _, x, _, _) = _menhir_stack in
      let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _menhir_s, m, _startpos_m_, _) = _menhir_stack in
      let (_endpos_ps_, ps) = (_endpos, _v) in
      let _v = _menhir_action_022 _endpos_ps_ _startpos_m_ m ps x in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ps_ _v _menhir_s _tok
  
  and _menhir_run_137 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_case_clause -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_case_clause (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_PIPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_073 c rest in
      _menhir_goto_more_case_clauses _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_more_case_clauses : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState134 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState136 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_138 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_cell1_case_clause -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_case_clause (_menhir_stack, _, c) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_027 c rest in
      let MenhirCell1_OF (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_CASE (_menhir_stack, _menhir_s) = _menhir_stack in
      let cs = _v in
      let _v = _menhir_action_055 cs e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_134 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_case_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | CONS | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let _v_0 = _menhir_action_074 () in
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_094 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_CASE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | OF ->
          let _menhir_stack = MenhirCell1_OF (_menhir_stack, MenhirState094) in
          let _menhir_s = MenhirState095 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BSUB ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BNEQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BMUL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BMOD ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BMINUS ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BLT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BLE ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BGT ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BGE ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BDIV ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | BADD ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | ASSIGN_REF ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | ASSIGN ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | APPEND ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | ANDALSO ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | ANDALSO | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_ANDALSO (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_044 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BGE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_050 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BGT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_048 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BLE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_049 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BLT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_047 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | ANDALSO | BADD | BGE | BGT | BLE | BLT | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BADD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_038 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | ANDALSO | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BDIV (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_041 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_APPEND as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_APPEND (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_057 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ANDALSO | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BMOD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_043 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BNEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_046 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_ASSIGN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_037 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BMINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_042 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | ANDALSO | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BMUL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_040 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | ANDALSO | BADD | BGE | BGT | BLE | BLT | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BSUB (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_039 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ANDALSO | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_ORELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_045 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_ASSIGN_REF (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_054 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_CONS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_CONS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_056 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | COMMA | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_BSUB (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_036 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_167 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          let _menhir_s = MenhirState168 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NUM _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | RSBRACKET ->
          let e = _v in
          let _v = _menhir_action_071 e in
          _menhir_goto_list_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_list_elements : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState168 ->
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState032 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_169 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_aexpr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_aexpr (_menhir_stack, _menhir_s, e, _) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_072 e rest in
      _menhir_goto_list_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_165 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LSBRACKET -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, l) = (_endpos, _v) in
      let _v = _menhir_action_011 l in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_run_079 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let e = _v in
      let _v = _menhir_action_031 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | STRING _v_0 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState055
      | NUM _v_1 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState055
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LPAR ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | IDENT _v_2 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState055
      | FALSE ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | CONS | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_079 x in
          _menhir_goto_nonempty_list_aexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_aexpr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState048 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_057 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_033 args f in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_aexpr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_aexpr (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let (_endpos_xs_, xs) = (_endpos, _v) in
      let _v = _menhir_action_080 x xs in
      _menhir_goto_nonempty_list_aexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_xs_ _v _menhir_s _tok
  
  and _menhir_run_051 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _, f, _, _) = _menhir_stack in
      let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _menhir_s, m, _startpos_m_, _) = _menhir_stack in
      let (_endpos_args_, args) = (_endpos, _v) in
      let _v = _menhir_action_058 _endpos_args_ _startpos_m_ args f m in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_141 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState141
      | ARROW ->
          let x = _v in
          let _v = _menhir_action_083 x in
          _menhir_goto_nonempty_list_ident_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_ident_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState141 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState041 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_153 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_ident_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState154 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_142 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_084 x xs in
      _menhir_goto_nonempty_list_ident_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_042 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_ident_ (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState043 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FALSE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | TRUE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | NUM _v_0 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState116
      | LSBRACKET ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | LPAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState116
      | FALSE ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _menhir_stack = MenhirCell1_DOT (_menhir_stack, MenhirState114) in
          let _menhir_s = MenhirState115 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ARROW | COMMA | CONS | FALSE | IDENT _ | LPAR | LSBRACKET | NUM _ | RPAR | RSBRACKET | TRUE | UNDERSCORE ->
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_017 x in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | TRUE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | NUM _v_0 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState112
      | LSBRACKET ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | LPAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState112
      | FALSE ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | _ ->
          _eRR ()
  
  and _menhir_run_110 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState110
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState110
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | DOT ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _menhir_stack = MenhirCell1_DOT (_menhir_stack, MenhirState110) in
          let _menhir_s = MenhirState111 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ARROW | COMMA | CONS | RPAR ->
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_017 x in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _menhir_s, m, _startpos_m_, _) = _menhir_stack in
      let (_endpos_x_, x) = (_endpos, _v) in
      let _v = _menhir_action_012 _endpos_x_ _startpos_m_ m x in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
  
  and _menhir_run_052 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _menhir_stack = MenhirCell1_DOT (_menhir_stack, MenhirState052) in
          let _menhir_s = MenhirState053 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | CONS | DATATYPE | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IN | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | RPAR | RSBRACKET | SEMICOLON | STRING _ | THEN | TRUE | TYPE | VAL ->
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_005 x in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_DOT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | STRING _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState050
      | NUM _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState050
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | IDENT _v_2 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState050
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | CONS | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _menhir_s, m, _startpos_m_, _) = _menhir_stack in
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_012 _endpos_x_ _startpos_m_ m x in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | STRING _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState048
      | NUM _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState048
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | IDENT _v_2 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState048
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | DOT ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _menhir_stack = MenhirCell1_DOT (_menhir_stack, MenhirState048) in
          let _menhir_s = MenhirState049 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | COMMA | CONS | DATATYPE | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IN | OF | ORELSE | PIPE | RPAR | SEMICOLON | THEN | TYPE | VAL ->
          let (_endpos_x_, x) = (_endpos, _v) in
          let _v = _menhir_action_005 x in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LET as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState039 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FALSE ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RAISE -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_RAISE (_menhir_stack, _menhir_s) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_053 x in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_022 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState022
      | ASSIGN ->
          let _v_1 = _menhir_action_067 () in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState022
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_TYPE as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState017 in
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
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_024 x in
      _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_003 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_VAL as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
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
      | VAL ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TYPE ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | GOSPEL_COMMENT _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | FUN ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EXCEPTION ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | DATATYPE ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EOF ->
          let _v = _menhir_action_069 () in
          _menhir_run_201 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
