
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
# 32 "parser.mly"
       (string)
# 54 "parser.ml"
  )
    | FUN
    | FALSE
    | EXCEPTION
    | EOF
    | END
    | ELSE
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

# 95 "parser.ml"

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

  | MenhirState020 : (('s, _menhir_box_file) _menhir_cell1_REF, _menhir_box_file) _menhir_state
    (** State 020.
        Stack shape : REF.
        Start symbol: file. *)

  | MenhirState021 : (('s, _menhir_box_file) _menhir_cell1_RAISE, _menhir_box_file) _menhir_state
    (** State 021.
        Stack shape : RAISE.
        Start symbol: file. *)

  | MenhirState023 : (('s, _menhir_box_file) _menhir_cell1_PRINT, _menhir_box_file) _menhir_state
    (** State 023.
        Stack shape : PRINT.
        Start symbol: file. *)

  | MenhirState025 : (('s, _menhir_box_file) _menhir_cell1_LSBRACKET, _menhir_box_file) _menhir_state
    (** State 025.
        Stack shape : LSBRACKET.
        Start symbol: file. *)

  | MenhirState027 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 027.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState029 : (('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_state
    (** State 029.
        Stack shape : LET.
        Start symbol: file. *)

  | MenhirState031 : ((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 031.
        Stack shape : LET ident.
        Start symbol: file. *)

  | MenhirState032 : (('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_state
    (** State 032.
        Stack shape : IF.
        Start symbol: file. *)

  | MenhirState034 : (('s, _menhir_box_file) _menhir_cell1_DEREF, _menhir_box_file) _menhir_state
    (** State 034.
        Stack shape : DEREF.
        Start symbol: file. *)

  | MenhirState035 : (('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_state
    (** State 035.
        Stack shape : CASE.
        Start symbol: file. *)

  | MenhirState036 : (('s, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 036.
        Stack shape : BSUB.
        Start symbol: file. *)

  | MenhirState037 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 037.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState038 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 038.
        Stack shape : ident LPAR.
        Start symbol: file. *)

  | MenhirState043 : (((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 043.
        Stack shape : ident LPAR expr.
        Start symbol: file. *)

  | MenhirState045 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE, _menhir_box_file) _menhir_state
    (** State 045.
        Stack shape : expr ORELSE.
        Start symbol: file. *)

  | MenhirState046 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 046.
        Stack shape : expr ORELSE expr.
        Start symbol: file. *)

  | MenhirState047 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_CONS, _menhir_box_file) _menhir_state
    (** State 047.
        Stack shape : expr CONS.
        Start symbol: file. *)

  | MenhirState048 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_CONS, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 048.
        Stack shape : expr CONS expr.
        Start symbol: file. *)

  | MenhirState049 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF, _menhir_box_file) _menhir_state
    (** State 049.
        Stack shape : expr ASSIGN_REF.
        Start symbol: file. *)

  | MenhirState050 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN_REF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 050.
        Stack shape : expr ASSIGN_REF expr.
        Start symbol: file. *)

  | MenhirState051 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 051.
        Stack shape : expr BSUB.
        Start symbol: file. *)

  | MenhirState052 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 052.
        Stack shape : expr BSUB expr.
        Start symbol: file. *)

  | MenhirState053 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL, _menhir_box_file) _menhir_state
    (** State 053.
        Stack shape : expr BMUL.
        Start symbol: file. *)

  | MenhirState054 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 054.
        Stack shape : expr BMUL expr.
        Start symbol: file. *)

  | MenhirState055 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS, _menhir_box_file) _menhir_state
    (** State 055.
        Stack shape : expr BMINUS.
        Start symbol: file. *)

  | MenhirState056 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 056.
        Stack shape : expr BMINUS expr.
        Start symbol: file. *)

  | MenhirState057 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN, _menhir_box_file) _menhir_state
    (** State 057.
        Stack shape : expr ASSIGN.
        Start symbol: file. *)

  | MenhirState058 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 058.
        Stack shape : expr ASSIGN expr.
        Start symbol: file. *)

  | MenhirState059 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ, _menhir_box_file) _menhir_state
    (** State 059.
        Stack shape : expr BNEQ.
        Start symbol: file. *)

  | MenhirState060 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 060.
        Stack shape : expr BNEQ expr.
        Start symbol: file. *)

  | MenhirState061 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD, _menhir_box_file) _menhir_state
    (** State 061.
        Stack shape : expr BMOD.
        Start symbol: file. *)

  | MenhirState062 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 062.
        Stack shape : expr BMOD expr.
        Start symbol: file. *)

  | MenhirState063 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_APPEND, _menhir_box_file) _menhir_state
    (** State 063.
        Stack shape : expr APPEND.
        Start symbol: file. *)

  | MenhirState064 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_APPEND, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 064.
        Stack shape : expr APPEND expr.
        Start symbol: file. *)

  | MenhirState066 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV, _menhir_box_file) _menhir_state
    (** State 066.
        Stack shape : expr BDIV.
        Start symbol: file. *)

  | MenhirState067 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 067.
        Stack shape : expr BDIV expr.
        Start symbol: file. *)

  | MenhirState068 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD, _menhir_box_file) _menhir_state
    (** State 068.
        Stack shape : expr BADD.
        Start symbol: file. *)

  | MenhirState069 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 069.
        Stack shape : expr BADD expr.
        Start symbol: file. *)

  | MenhirState070 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT, _menhir_box_file) _menhir_state
    (** State 070.
        Stack shape : expr BLT.
        Start symbol: file. *)

  | MenhirState071 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 071.
        Stack shape : expr BLT expr.
        Start symbol: file. *)

  | MenhirState072 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE, _menhir_box_file) _menhir_state
    (** State 072.
        Stack shape : expr BLE.
        Start symbol: file. *)

  | MenhirState073 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 073.
        Stack shape : expr BLE expr.
        Start symbol: file. *)

  | MenhirState074 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT, _menhir_box_file) _menhir_state
    (** State 074.
        Stack shape : expr BGT.
        Start symbol: file. *)

  | MenhirState075 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 075.
        Stack shape : expr BGT expr.
        Start symbol: file. *)

  | MenhirState076 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE, _menhir_box_file) _menhir_state
    (** State 076.
        Stack shape : expr BGE.
        Start symbol: file. *)

  | MenhirState077 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 077.
        Stack shape : expr BGE expr.
        Start symbol: file. *)

  | MenhirState078 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO, _menhir_box_file) _menhir_state
    (** State 078.
        Stack shape : expr ANDALSO.
        Start symbol: file. *)

  | MenhirState079 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 079.
        Stack shape : expr ANDALSO expr.
        Start symbol: file. *)

  | MenhirState080 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_state
    (** State 080.
        Stack shape : expr COMMA.
        Start symbol: file. *)

  | MenhirState081 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 081.
        Stack shape : expr COMMA expr.
        Start symbol: file. *)

  | MenhirState083 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_state
    (** State 083.
        Stack shape : expr BSUB.
        Start symbol: file. *)

  | MenhirState084 : (((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 084.
        Stack shape : expr BSUB expr.
        Start symbol: file. *)

  | MenhirState087 : ((('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 087.
        Stack shape : expr expr.
        Start symbol: file. *)

  | MenhirState090 : (('s, _menhir_box_file) _menhir_cell1_aexpr, _menhir_box_file) _menhir_state
    (** State 090.
        Stack shape : aexpr.
        Start symbol: file. *)

  | MenhirState092 : ((('s, _menhir_box_file) _menhir_cell1_BSUB, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 092.
        Stack shape : BSUB expr.
        Start symbol: file. *)

  | MenhirState093 : ((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 093.
        Stack shape : CASE expr.
        Start symbol: file. *)

  | MenhirState094 : (((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_state
    (** State 094.
        Stack shape : CASE expr OF.
        Start symbol: file. *)

  | MenhirState098 : (('s, _menhir_box_file) _menhir_cell1_LSBRACKET, _menhir_box_file) _menhir_state
    (** State 098.
        Stack shape : LSBRACKET.
        Start symbol: file. *)

  | MenhirState100 : (('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_state
    (** State 100.
        Stack shape : LPAR.
        Start symbol: file. *)

  | MenhirState104 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 104.
        Stack shape : LPAR pattern.
        Start symbol: file. *)

  | MenhirState106 : ((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_state
    (** State 106.
        Stack shape : pattern COMMA.
        Start symbol: file. *)

  | MenhirState107 : (((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 107.
        Stack shape : pattern COMMA pattern.
        Start symbol: file. *)

  | MenhirState109 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 109.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState112 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 112.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState115 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 115.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState121 : (('s, _menhir_box_file) _menhir_cell1_apattern, _menhir_box_file) _menhir_state
    (** State 121.
        Stack shape : apattern.
        Start symbol: file. *)

  | MenhirState124 : (('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_state
    (** State 124.
        Stack shape : pattern.
        Start symbol: file. *)

  | MenhirState125 : ((('s, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 125.
        Stack shape : pattern expr.
        Start symbol: file. *)

  | MenhirState127 : ((((('s, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_state
    (** State 127.
        Stack shape : CASE expr OF case_clause.
        Start symbol: file. *)

  | MenhirState128 : ((('s, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_state
    (** State 128.
        Stack shape : case_clause PIPE.
        Start symbol: file. *)

  | MenhirState129 : (((('s, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_state
    (** State 129.
        Stack shape : case_clause PIPE case_clause.
        Start symbol: file. *)

  | MenhirState132 : ((('s, _menhir_box_file) _menhir_cell1_DEREF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 132.
        Stack shape : DEREF expr.
        Start symbol: file. *)

  | MenhirState133 : ((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 133.
        Stack shape : IF expr.
        Start symbol: file. *)

  | MenhirState134 : (((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_state
    (** State 134.
        Stack shape : IF expr THEN.
        Start symbol: file. *)

  | MenhirState135 : ((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 135.
        Stack shape : IF expr THEN expr.
        Start symbol: file. *)

  | MenhirState136 : (((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE, _menhir_box_file) _menhir_state
    (** State 136.
        Stack shape : IF expr THEN expr ELSE.
        Start symbol: file. *)

  | MenhirState137 : ((((((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 137.
        Stack shape : IF expr THEN expr ELSE expr.
        Start symbol: file. *)

  | MenhirState138 : (((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 138.
        Stack shape : LET ident expr.
        Start symbol: file. *)

  | MenhirState139 : ((((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN, _menhir_box_file) _menhir_state
    (** State 139.
        Stack shape : LET ident expr IN.
        Start symbol: file. *)

  | MenhirState140 : (((((('s, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 140.
        Stack shape : LET ident expr IN expr.
        Start symbol: file. *)

  | MenhirState142 : ((('s, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 142.
        Stack shape : LPAR expr.
        Start symbol: file. *)

  | MenhirState146 : (('s, _menhir_box_file) _menhir_cell1_aexpr, _menhir_box_file) _menhir_state
    (** State 146.
        Stack shape : aexpr.
        Start symbol: file. *)

  | MenhirState149 : ((('s, _menhir_box_file) _menhir_cell1_REF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 149.
        Stack shape : REF expr.
        Start symbol: file. *)

  | MenhirState150 : ((((('s, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 150.
        Stack shape : FUN ident list(ident) expr.
        Start symbol: file. *)

  | MenhirState151 : ((('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 151.
        Stack shape : ident ident.
        Start symbol: file. *)

  | MenhirState153 : (('s, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_state
    (** State 153.
        Stack shape : EXCEPTION.
        Start symbol: file. *)

  | MenhirState154 : ((('s, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 154.
        Stack shape : EXCEPTION ident.
        Start symbol: file. *)

  | MenhirState156 : (('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_state
    (** State 156.
        Stack shape : DATATYPE.
        Start symbol: file. *)

  | MenhirState157 : (('s, _menhir_box_file) _menhir_cell1_TYVAR, _menhir_box_file) _menhir_state
    (** State 157.
        Stack shape : TYVAR.
        Start symbol: file. *)

  | MenhirState159 : ((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_state
    (** State 159.
        Stack shape : DATATYPE tyvar_list.
        Start symbol: file. *)

  | MenhirState161 : (((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 161.
        Stack shape : DATATYPE tyvar_list ident.
        Start symbol: file. *)

  | MenhirState162 : (('s, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_state
    (** State 162.
        Stack shape : ident.
        Start symbol: file. *)

  | MenhirState164 : (('s, _menhir_box_file) _menhir_cell1_atyp, _menhir_box_file) _menhir_state
    (** State 164.
        Stack shape : atyp.
        Start symbol: file. *)

  | MenhirState167 : ((((('s, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_state
    (** State 167.
        Stack shape : DATATYPE tyvar_list ident constructor.
        Start symbol: file. *)

  | MenhirState168 : ((('s, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_state
    (** State 168.
        Stack shape : constructor PIPE.
        Start symbol: file. *)

  | MenhirState169 : (((('s, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_state
    (** State 169.
        Stack shape : constructor PIPE constructor.
        Start symbol: file. *)

  | MenhirState172 : (('s, _menhir_box_file) _menhir_cell1_toplevel, _menhir_box_file) _menhir_state
    (** State 172.
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
# 769 "parser.ml"
)

and _menhir_box_file = 
  | MenhirBox_file of (Ast.file) [@@unboxed]

let _menhir_action_01 =
  fun n ->
    (
# 106 "parser.mly"
          ( Ecst n )
# 780 "parser.ml"
     : (Ast.expr))

let _menhir_action_02 =
  fun () ->
    (
# 107 "parser.mly"
       ( Ebool true )
# 788 "parser.ml"
     : (Ast.expr))

let _menhir_action_03 =
  fun () ->
    (
# 108 "parser.mly"
        ( Ebool false )
# 796 "parser.ml"
     : (Ast.expr))

let _menhir_action_04 =
  fun s ->
    (
# 109 "parser.mly"
             ( Estring s )
# 804 "parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun x ->
    (
# 110 "parser.mly"
            ( Evar x )
# 812 "parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun e ->
    (
# 111 "parser.mly"
                     ( e )
# 820 "parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun es ->
    (
# 112 "parser.mly"
                          ( Etuple es )
# 828 "parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun () ->
    (
# 113 "parser.mly"
                      ( Enil )
# 836 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun l ->
    (
# 114 "parser.mly"
                                        ( Elist l )
# 844 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun () ->
    (
# 150 "parser.mly"
       ( Pbool true )
# 852 "parser.ml"
     : (Ast.pattern))

let _menhir_action_11 =
  fun () ->
    (
# 151 "parser.mly"
        ( Pbool false )
# 860 "parser.ml"
     : (Ast.pattern))

let _menhir_action_12 =
  fun () ->
    (
# 152 "parser.mly"
             ( Pwild )
# 868 "parser.ml"
     : (Ast.pattern))

let _menhir_action_13 =
  fun n ->
    (
# 153 "parser.mly"
          ( Pcst n )
# 876 "parser.ml"
     : (Ast.pattern))

let _menhir_action_14 =
  fun x ->
    (
# 154 "parser.mly"
            ( Pvar x )
# 884 "parser.ml"
     : (Ast.pattern))

let _menhir_action_15 =
  fun p ->
    (
# 155 "parser.mly"
                        ( p )
# 892 "parser.ml"
     : (Ast.pattern))

let _menhir_action_16 =
  fun ps ->
    (
# 156 "parser.mly"
                             ( Ptuple ps )
# 900 "parser.ml"
     : (Ast.pattern))

let _menhir_action_17 =
  fun () ->
    (
# 157 "parser.mly"
                      ( Pnil )
# 908 "parser.ml"
     : (Ast.pattern))

let _menhir_action_18 =
  fun l ->
    (
# 158 "parser.mly"
                                       ( Plist l )
# 916 "parser.ml"
     : (Ast.pattern))

let _menhir_action_19 =
  fun ty ->
    (
# 89 "parser.mly"
                        ( TyVar ty )
# 924 "parser.ml"
     : (Ast.typ))

let _menhir_action_20 =
  fun x ->
    (
# 90 "parser.mly"
                        ( TyName x )
# 932 "parser.ml"
     : (Ast.typ))

let _menhir_action_21 =
  fun t ->
    (
# 91 "parser.mly"
                        ( t )
# 940 "parser.ml"
     : (Ast.typ))

let _menhir_action_22 =
  fun e p ->
    (
# 140 "parser.mly"
                             ( (p, e) )
# 948 "parser.ml"
     : (Ast.case_clause))

let _menhir_action_23 =
  fun c rest ->
    (
# 143 "parser.mly"
                                           ( c :: rest )
# 956 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_24 =
  fun args cname ->
    (
# 84 "parser.mly"
                             ( { cname = cname; args = args } )
# 964 "parser.ml"
     : (Ast.constructor))

let _menhir_action_25 =
  fun c rest ->
    (
# 75 "parser.mly"
                                           ( c :: rest )
# 972 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_26 =
  fun args s x ->
    (
# 101 "parser.mly"
      ( { name = x; formals = args; body = s } )
# 980 "parser.ml"
     : (Ast.def))

let _menhir_action_27 =
  fun e ->
    (
# 118 "parser.mly"
            ( e )
# 988 "parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun args cname ->
    (
# 119 "parser.mly"
                              ( Econstr(cname, args) )
# 996 "parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun e ->
    (
# 120 "parser.mly"
                  ( Eprint e )
# 1004 "parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun args f ->
    (
# 121 "parser.mly"
                                   ( Ecall(f, args) )
# 1012 "parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun e ->
    (
# 122 "parser.mly"
               ( Eref e )
# 1020 "parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun e ->
    (
# 123 "parser.mly"
                             ( Ederef e )
# 1028 "parser.ml"
     : (Ast.expr))

let _menhir_action_33 =
  fun e ->
    (
# 124 "parser.mly"
                             ( Eunop (Bminus, e) )
# 1036 "parser.ml"
     : (Ast.expr))

let _menhir_action_34 =
  fun e1 e2 ->
    let o = 
# 190 "parser.mly"
         ( Bassign )
# 1044 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1049 "parser.ml"
     : (Ast.expr))

let _menhir_action_35 =
  fun e1 e2 ->
    let o = 
# 191 "parser.mly"
       ( Badd )
# 1057 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1062 "parser.ml"
     : (Ast.expr))

let _menhir_action_36 =
  fun e1 e2 ->
    let o = 
# 192 "parser.mly"
       ( Bsub )
# 1070 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1075 "parser.ml"
     : (Ast.expr))

let _menhir_action_37 =
  fun e1 e2 ->
    let o = 
# 193 "parser.mly"
       ( Bmul )
# 1083 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1088 "parser.ml"
     : (Ast.expr))

let _menhir_action_38 =
  fun e1 e2 ->
    let o = 
# 194 "parser.mly"
       ( Bdiv )
# 1096 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1101 "parser.ml"
     : (Ast.expr))

let _menhir_action_39 =
  fun e1 e2 ->
    let o = 
# 195 "parser.mly"
         ( Bminus )
# 1109 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1114 "parser.ml"
     : (Ast.expr))

let _menhir_action_40 =
  fun e1 e2 ->
    let o = 
# 196 "parser.mly"
       ( Bmod )
# 1122 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1127 "parser.ml"
     : (Ast.expr))

let _menhir_action_41 =
  fun e1 e2 ->
    let o = 
# 197 "parser.mly"
           ( Bandalso )
# 1135 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1140 "parser.ml"
     : (Ast.expr))

let _menhir_action_42 =
  fun e1 e2 ->
    let o = 
# 198 "parser.mly"
           ( Borelse )
# 1148 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1153 "parser.ml"
     : (Ast.expr))

let _menhir_action_43 =
  fun e1 e2 ->
    let o = 
# 199 "parser.mly"
       ( Bneq )
# 1161 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1166 "parser.ml"
     : (Ast.expr))

let _menhir_action_44 =
  fun e1 e2 ->
    let o = 
# 200 "parser.mly"
       ( Blt )
# 1174 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1179 "parser.ml"
     : (Ast.expr))

let _menhir_action_45 =
  fun e1 e2 ->
    let o = 
# 201 "parser.mly"
       ( Bgt )
# 1187 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1192 "parser.ml"
     : (Ast.expr))

let _menhir_action_46 =
  fun e1 e2 ->
    let o = 
# 202 "parser.mly"
       ( Ble )
# 1200 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1205 "parser.ml"
     : (Ast.expr))

let _menhir_action_47 =
  fun e1 e2 ->
    let o = 
# 203 "parser.mly"
       ( Bge )
# 1213 "parser.ml"
     in
    (
# 125 "parser.mly"
                             ( Ebinop (o, e1, e2) )
# 1218 "parser.ml"
     : (Ast.expr))

let _menhir_action_48 =
  fun e s1 s2 ->
    (
# 126 "parser.mly"
                                            ( Eif (e, s1, s2) )
# 1226 "parser.ml"
     : (Ast.expr))

let _menhir_action_49 =
  fun e1 e2 x ->
    (
# 127 "parser.mly"
                                                      ( Elet (x, e1, e2) )
# 1234 "parser.ml"
     : (Ast.expr))

let _menhir_action_50 =
  fun x ->
    (
# 128 "parser.mly"
                  ( Eraise x )
# 1242 "parser.ml"
     : (Ast.expr))

let _menhir_action_51 =
  fun e1 e2 ->
    (
# 129 "parser.mly"
                                 ( Eassign (e1, e2) )
# 1250 "parser.ml"
     : (Ast.expr))

let _menhir_action_52 =
  fun cs e ->
    (
# 130 "parser.mly"
                                     ( Ecase (e, cs) )
# 1258 "parser.ml"
     : (Ast.expr))

let _menhir_action_53 =
  fun e1 e2 ->
    (
# 131 "parser.mly"
                           ( Econs (e1, e2) )
# 1266 "parser.ml"
     : (Ast.expr))

let _menhir_action_54 =
  fun e1 e2 ->
    (
# 132 "parser.mly"
                             ( Eappend (e1, e2) )
# 1274 "parser.ml"
     : (Ast.expr))

let _menhir_action_55 =
  fun e rest ->
    (
# 181 "parser.mly"
                                ( e :: rest )
# 1282 "parser.ml"
     : (Ast.expr list))

let _menhir_action_56 =
  fun e rest ->
    (
# 185 "parser.mly"
                                      ( e :: rest )
# 1290 "parser.ml"
     : (Ast.expr list))

let _menhir_action_57 =
  fun () ->
    (
# 186 "parser.mly"
  ( [] )
# 1298 "parser.ml"
     : (Ast.expr list))

let _menhir_action_58 =
  fun items ->
    (
# 52 "parser.mly"
                        ( items )
# 1306 "parser.ml"
     : (Ast.file))

let _menhir_action_59 =
  fun _endpos_x_ _startpos_x_ x ->
    let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    (
# 207 "parser.mly"
            ( mk_id x _startpos _endpos )
# 1316 "parser.ml"
     : (Ast.ident))

let _menhir_action_60 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1324 "parser.ml"
     : (Ast.typ list))

let _menhir_action_61 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1332 "parser.ml"
     : (Ast.typ list))

let _menhir_action_62 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1340 "parser.ml"
     : (Ast.expr list))

let _menhir_action_63 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1348 "parser.ml"
     : (Ast.expr list))

let _menhir_action_64 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1356 "parser.ml"
     : (Ast.ident list))

let _menhir_action_65 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1364 "parser.ml"
     : (Ast.ident list))

let _menhir_action_66 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1372 "parser.ml"
     : (Ast.file))

let _menhir_action_67 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1380 "parser.ml"
     : (Ast.file))

let _menhir_action_68 =
  fun e ->
    (
# 136 "parser.mly"
            ( [e] )
# 1388 "parser.ml"
     : (Ast.expr list))

let _menhir_action_69 =
  fun e rest ->
    (
# 137 "parser.mly"
                                       ( e :: rest )
# 1396 "parser.ml"
     : (Ast.expr list))

let _menhir_action_70 =
  fun c rest ->
    (
# 146 "parser.mly"
                                                ( c :: rest )
# 1404 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_71 =
  fun () ->
    (
# 147 "parser.mly"
  ( [] )
# 1412 "parser.ml"
     : (Ast.case_clause list))

let _menhir_action_72 =
  fun c rest ->
    (
# 79 "parser.mly"
                                                ( c :: rest )
# 1420 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_73 =
  fun () ->
    (
# 80 "parser.mly"
  ( [] )
# 1428 "parser.ml"
     : (Ast.constructor list))

let _menhir_action_74 =
  fun p rest ->
    (
# 176 "parser.mly"
                                         ( p :: rest )
# 1436 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_75 =
  fun () ->
    (
# 177 "parser.mly"
  ( [] )
# 1444 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_76 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1452 "parser.ml"
     : (Ast.expr list))

let _menhir_action_77 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1460 "parser.ml"
     : (Ast.expr list))

let _menhir_action_78 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1468 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_79 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1476 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_80 =
  fun p ->
    (
# 162 "parser.mly"
               ( [p] )
# 1484 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_81 =
  fun p rest ->
    (
# 163 "parser.mly"
                                         ( p :: rest )
# 1492 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_82 =
  fun p ->
    (
# 166 "parser.mly"
               ( p )
# 1500 "parser.ml"
     : (Ast.pattern))

let _menhir_action_83 =
  fun cname ps ->
    (
# 167 "parser.mly"
                               ( Pconstr(cname, ps) )
# 1508 "parser.ml"
     : (Ast.pattern))

let _menhir_action_84 =
  fun p1 p2 ->
    (
# 168 "parser.mly"
                                   ( Pcons(p1, p2) )
# 1516 "parser.ml"
     : (Ast.pattern))

let _menhir_action_85 =
  fun p rest ->
    (
# 172 "parser.mly"
                                   ( p :: rest )
# 1524 "parser.ml"
     : (Ast.pattern list))

let _menhir_action_86 =
  fun x ->
    (
# 57 "parser.mly"
    ( Texn (x, None) )
# 1532 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_87 =
  fun t x ->
    (
# 59 "parser.mly"
    ( Texn (x, Some t) )
# 1540 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_88 =
  fun c ty x ->
    (
# 61 "parser.mly"
    ( Tdatatype (ty, x, c) )
# 1548 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_89 =
  fun c x ->
    (
# 63 "parser.mly"
    ( Ttype (x, c) )
# 1556 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_90 =
  fun d ->
    (
# 65 "parser.mly"
    ( Tdef d )
# 1564 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_91 =
  fun s ->
    (
# 67 "parser.mly"
    ( Tgospel_spec s )
# 1572 "parser.ml"
     : (Ast.toplevel))

let _menhir_action_92 =
  fun t ->
    (
# 95 "parser.mly"
                        ( t )
# 1580 "parser.ml"
     : (Ast.typ))

let _menhir_action_93 =
  fun t1 t2 ->
    (
# 96 "parser.mly"
                        ( TyApp (t1, [t2]) )
# 1588 "parser.ml"
     : (Ast.typ))

let _menhir_action_94 =
  fun rest ty ->
    (
# 71 "parser.mly"
                               ( ty :: rest )
# 1596 "parser.ml"
     : (string list))

let _menhir_action_95 =
  fun () ->
    (
# 72 "parser.mly"
  ( [] )
# 1604 "parser.ml"
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
  
  let _menhir_run_175 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let items = _v in
      let _v = _menhir_action_58 items in
      MenhirBox_file _v
  
  let rec _menhir_run_173 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_toplevel -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_toplevel (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_67 x xs in
      _menhir_goto_list_toplevel_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_toplevel_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_175 _menhir_stack _v
      | MenhirState172 ->
          _menhir_run_173 _menhir_stack _v
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
      let _v = _menhir_action_59 _endpos_x_ _startpos_x_ x in
      _menhir_goto_ident _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_ident : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState168 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState161 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState159 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState153 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState151 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState136 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState014 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState164 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
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
  
  and _menhir_run_162 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState162
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState162
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | PIPE | TYPE ->
          let _v_2 = _menhir_action_60 () in
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let ty = _v in
      let _v = _menhir_action_19 ty in
      _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_atyp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState164 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState004 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_164 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_atyp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState164
      | LPAR ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState164
      | IDENT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState164
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | PIPE | TYPE ->
          let _v_2 = _menhir_action_60 () in
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
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
  
  and _menhir_run_165 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_atyp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_61 x xs in
      _menhir_goto_list_atyp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_atyp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState164 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState162 ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_163 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_24 args cname in
      _menhir_goto_constructor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_constructor : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState168 ->
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState161 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_169 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constructor (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState169
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let _v_0 = _menhir_action_73 () in
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_168 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_constructor as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PIPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState168 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_170 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_constructor, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_constructor -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_constructor (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_PIPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_72 c rest in
      _menhir_goto_more_constructors _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_more_constructors : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_constructor as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState167 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState169 ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_171 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_constructor -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_constructor (_menhir_stack, _, c) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_25 c rest in
      let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
      let MenhirCell1_tyvar_list (_menhir_stack, _, ty) = _menhir_stack in
      let MenhirCell1_DATATYPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let c = _v in
      let _v = _menhir_action_88 c ty x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_toplevel : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_toplevel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYPE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | GOSPEL_COMMENT _v_0 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState172
      | FUN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | EXCEPTION ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | DATATYPE ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | EOF ->
          let _v_1 = _menhir_action_66 () in
          _menhir_run_173 _menhir_stack _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_91 s in
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
  
  and _menhir_run_153 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState153 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_156 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATATYPE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156
      | IDENT _ ->
          let _v = _menhir_action_95 () in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_TYVAR (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState157
      | IDENT _ ->
          let _v_1 = _menhir_action_95 () in
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_158 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_TYVAR -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TYVAR (_menhir_stack, _menhir_s, ty) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_94 rest ty in
      _menhir_goto_tyvar_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_tyvar_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState156 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState157 ->
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_159 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_tyvar_list (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState159
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_167 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constructor (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState167
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let _v_0 = _menhir_action_73 () in
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_155 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
      let MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_87 t x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
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
          let _v = _menhir_action_92 t in
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
      let _v = _menhir_action_89 c x in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_atyp -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_atyp (_menhir_stack, _menhir_s, t1) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_93 t1 t2 in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_007 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_21 t in
          _menhir_goto_atyp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_160 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_DATATYPE, _menhir_box_file) _menhir_cell1_tyvar_list as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState161 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_154 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_EXCEPTION as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TYVAR _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState154
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState154
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let MenhirCell1_EXCEPTION (_menhir_stack, _menhir_s) = _menhir_stack in
          let x = _v in
          let _v = _menhir_action_86 x in
          _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState151
      | ASSIGN ->
          let _v_1 = _menhir_action_64 () in
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_152 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_65 x xs in
      _menhir_goto_list_ident_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ident_ : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState151 ->
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v
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
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
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
      | MenhirState023 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState146 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState136 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_148 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_PRINT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_PRINT (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_29 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState017 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState136 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
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
      | MenhirState038 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_150 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_FUN, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_list_ident_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | DATATYPE | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | TYPE ->
          let MenhirCell1_list_ident_ (_menhir_stack, _, args) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _menhir_s) = _menhir_stack in
          let s = _v in
          let _v = _menhir_action_26 args s x in
          let d = _v in
          let _v = _menhir_action_90 d in
          _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ORELSE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState045 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_04 s in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState020 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RAISE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState021 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PRINT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState023 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_01 n in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | STRING _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025
      | RSBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_08 () in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NUM _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | LPAR ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState025
      | FALSE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState027 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAL ->
          let _menhir_s = MenhirState029 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState032 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_03 () in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DEREF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState034 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CASE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState035 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState036 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CONS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState047 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState051 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BNEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState059 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMUL (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState053 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMOD (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState061 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BMINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState055 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BLT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BLE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState072 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BGT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState074 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BGE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState076 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BDIV (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState066 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BADD (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
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
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ASSIGN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState057 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_APPEND (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState063 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDALSO (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState078 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_149 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_31 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_142 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | COMMA ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BSUB ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_06 e in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState080 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_140 : type  ttv_stack. (((((ttv_stack, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_IN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_ident (_menhir_stack, _, x) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_49 e1 e2 x in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_LET, _menhir_box_file) _menhir_cell1_ident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | IN ->
          let _menhir_stack = MenhirCell1_IN (_menhir_stack, MenhirState138) in
          let _menhir_s = MenhirState139 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BSUB ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | _ ->
          _eRR ()
  
  and _menhir_run_137 : type  ttv_stack. ((((((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, s1) = _menhir_stack in
          let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let s2 = _v in
          let _v = _menhir_action_48 e s1 s2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_THEN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState135) in
          let _menhir_s = MenhirState136 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BSUB ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState133) in
          let _menhir_s = MenhirState134 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BSUB ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | _ ->
          _eRR ()
  
  and _menhir_run_132 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_DEREF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_DEREF (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_32 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_pattern (_menhir_stack, _menhir_s, p) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_22 e p in
          _menhir_goto_case_clause _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_case_clause : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState128 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_129 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_case_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | CONS | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let _v_0 = _menhir_action_71 () in
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_128 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PIPE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState128 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_12 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_apattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState121 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState094 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_120 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState121 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | RSBRACKET ->
          let p = _v in
          let _v = _menhir_action_80 p in
          _menhir_goto_pat_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_10 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_097 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_13 n in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_098 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | TRUE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RSBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_17 () in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NUM _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | LPAR ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098
      | FALSE ->
          let _menhir_stack = MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState100 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_11 () in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_pat_elements : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState098 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_122 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_81 p rest in
      _menhir_goto_pat_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_118 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LSBRACKET -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_18 l in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_116 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, p1) = _menhir_stack in
      let p2 = _v in
      let _v = _menhir_action_84 p1 p2 in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_pattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState128 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_123 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ARROW ->
          let _menhir_s = MenhirState124 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | RPAR ->
          let _v_0 = _menhir_action_75 () in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState106 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TRUE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_pattern, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_pattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_pattern (_menhir_stack, _, p) = _menhir_stack in
      let MenhirCell1_COMMA (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_74 p rest in
      _menhir_goto_more_patterns _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_more_patterns : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_pattern as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState104 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState107 ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_117 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_pattern -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_pattern (_menhir_stack, _, p) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_85 p rest in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_16 ps in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_104 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let p = _v in
          let _v = _menhir_action_15 p in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | COMMA ->
          let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState115 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | ARROW | COMMA | RPAR ->
          let p = _v in
          let _v = _menhir_action_82 p in
          _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | TRUE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState112
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | LPAR ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState112
      | FALSE ->
          let _menhir_stack = MenhirCell1_apattern (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | ARROW | COMMA | RPAR ->
          let x = _v in
          let _v = _menhir_action_78 x in
          _menhir_goto_nonempty_list_apattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_apattern_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState109 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_113 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_apattern -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_apattern (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_79 x xs in
      _menhir_goto_nonempty_list_apattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_110 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_83 cname ps in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_130 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause, _menhir_box_file) _menhir_cell1_PIPE, _menhir_box_file) _menhir_cell1_case_clause -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_case_clause (_menhir_stack, _, c) = _menhir_stack in
      let MenhirCell1_PIPE (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_70 c rest in
      _menhir_goto_more_case_clauses _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_more_case_clauses : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_case_clause as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState127 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_131 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF, _menhir_box_file) _menhir_cell1_case_clause -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_case_clause (_menhir_stack, _, c) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_23 c rest in
      let MenhirCell1_OF (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_CASE (_menhir_stack, _menhir_s) = _menhir_stack in
      let cs = _v in
      let _v = _menhir_action_52 cs e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_127 : type  ttv_stack. ((((ttv_stack, _menhir_box_file) _menhir_cell1_CASE, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_OF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_case_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PIPE ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | CONS | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let _v_0 = _menhir_action_71 () in
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_093 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_CASE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | OF ->
          let _menhir_stack = MenhirCell1_OF (_menhir_stack, MenhirState093) in
          let _menhir_s = MenhirState094 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | TRUE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BSUB ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BSUB (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_33 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | STRING _v_0 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState087
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | NUM _v_1 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState087
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | IDENT _v_2 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState087
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BSUB ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | RPAR ->
          let _v_3 = _menhir_action_62 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSUB (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState083 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NUM _v ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSUB ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_63 x xs in
      _menhir_goto_list_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState087 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState043 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_039 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ident (_menhir_stack, _menhir_s, f) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_30 args f in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_084 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | CASE | DEREF | FALSE | IDENT _ | IF | LET | LPAR | LSBRACKET | NUM _ | PRINT | RAISE | REF | RPAR | STRING _ | TRUE ->
          let MenhirCell1_BSUB (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_33 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | COMMA ->
          let MenhirCell1_BSUB (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_36 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | COMMA ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BSUB ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | RPAR ->
          let _v_0 = _menhir_action_57 () in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_COMMA, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_COMMA (_menhir_stack, _menhir_s) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_56 e rest in
      _menhir_goto_expr_seq_tail _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_expr_seq_tail : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState142 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState043 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LPAR, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_55 e rest in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let es = _v in
      let _v = _menhir_action_07 es in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_079 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ANDALSO as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | ANDALSO | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_ANDALSO (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_41 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BGE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_47 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BGT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BGT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_45 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BLE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_46 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BLT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BLT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_44 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BADD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ANDALSO | BADD | BGE | BGT | BLE | BLT | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BADD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_35 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BDIV as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ANDALSO | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BDIV (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_38 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_APPEND as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_APPEND (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_54 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMOD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ANDALSO | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BMOD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_40 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BNEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | ANDALSO | BGE | BGT | BLE | BLT | BNEQ | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BNEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_43 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ASSIGN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ORELSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_ASSIGN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_34 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BMINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_39 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BMUL as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | ANDALSO | BADD | BDIV | BGE | BGT | BLE | BLT | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BMUL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_37 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_BSUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | ANDALSO | BADD | BGE | BGT | BLE | BLT | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_BSUB (_menhir_stack, _) = _menhir_stack in
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
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | ANDALSO ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_ASSIGN_REF (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_51 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_CONS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | ANDALSO | APPEND | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_CONS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_53 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_ORELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BSUB ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BNEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BMUL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BMOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BLT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BLE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BGT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BGE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BDIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BADD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ASSIGN_REF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | APPEND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ANDALSO | CASE | COMMA | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FALSE | FUN | GOSPEL_COMMENT _ | IDENT _ | IF | IN | LET | LPAR | LSBRACKET | NUM _ | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | STRING _ | THEN | TRUE | TYPE ->
          let MenhirCell1_ORELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_42 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_ident, _menhir_box_file) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | STRING _v_0 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState043
      | RPAR ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REF ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | RAISE ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | PRINT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | ORELSE ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | NUM _v_1 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState043
      | LSBRACKET ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LPAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LET ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | IF ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | IDENT _v_2 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState043
      | FALSE ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | DEREF ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | CONS ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | COMMA ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | CASE ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BSUB ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BNEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BMUL ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BMOD ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BMINUS ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BLT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BLE ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BGT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BGE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BDIV ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BADD ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | ASSIGN_REF ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | ASSIGN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | APPEND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | ANDALSO ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState146 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NUM _v ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | RSBRACKET ->
          let e = _v in
          let _v = _menhir_action_68 e in
          _menhir_goto_list_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_list_elements : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState025 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_147 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_aexpr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_aexpr (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let rest = _v in
      let _v = _menhir_action_69 e rest in
      _menhir_goto_list_elements _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_143 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LSBRACKET -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LSBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_09 l in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_090 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | STRING _v_0 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState090
      | NUM _v_1 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState090
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | LPAR ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | IDENT _v_2 ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState090
      | FALSE ->
          let _menhir_stack = MenhirCell1_aexpr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | CONS | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IF | IN | LET | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | THEN | TYPE ->
          let x = _v in
          let _v = _menhir_action_76 x in
          _menhir_goto_nonempty_list_aexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_aexpr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_091 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_aexpr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_aexpr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_77 x xs in
      _menhir_goto_nonempty_list_aexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_ident -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ident (_menhir_stack, _menhir_s, cname) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_28 args cname in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_065 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let e = _v in
      let _v = _menhir_action_27 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_111 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_14 x in
      _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_109 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | NUM _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState109
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState109
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | ARROW | COMMA | CONS | RPAR ->
          let x = _v in
          let _v = _menhir_action_14 x in
          _menhir_goto_apattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_05 x in
      _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | STRING _v_0 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState037
      | NUM _v_1 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState037
      | LSBRACKET ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LPAR ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState037) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | STRING _v_2 ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState038
          | REF ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | RAISE ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | PRINT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | NUM _v_3 ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState038
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | LET ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | IF ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | IDENT _v_4 ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState038
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | DEREF ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | CASE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | BSUB ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
          | RPAR ->
              let _v_5 = _menhir_action_62 () in
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5
          | _ ->
              _eRR ())
      | IDENT _v_6 ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState037
      | FALSE ->
          let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | ANDALSO | APPEND | ASSIGN | ASSIGN_REF | BADD | BDIV | BGE | BGT | BLE | BLT | BMINUS | BMOD | BMUL | BNEQ | BSUB | CASE | COMMA | CONS | DATATYPE | DEREF | ELSE | END | EOF | EXCEPTION | FUN | GOSPEL_COMMENT _ | IF | IN | LET | OF | ORELSE | PIPE | PRINT | RAISE | REF | RPAR | THEN | TYPE ->
          let x = _v in
          let _v = _menhir_action_05 x in
          _menhir_goto_aexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState031 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RAISE ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NUM _v ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LSBRACKET ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FALSE ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DEREF ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CASE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSUB ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RAISE -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_RAISE (_menhir_stack, _menhir_s) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_50 x in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_015 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_FUN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ident (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState015
      | ASSIGN ->
          let _v_1 = _menhir_action_64 () in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState015
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_20 x in
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
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | DATATYPE ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EOF ->
          let _v = _menhir_action_66 () in
          _menhir_run_175 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
