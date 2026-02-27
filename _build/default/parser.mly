%{
    open Ast

    let mk_id id startpos endpos =
      { loc = (startpos, endpos); id }
%}

%token <int> NUM
%token <string> IDENT
%token IF THEN ELSE LET IN END PRINT
%token FUN
%token EXCEPTION RAISE
%token DATATYPE
%token <string> TYVAR
%token TYPE
%token PIPE
%token REF DEREF ASSIGN_REF
%token CASE OF ARROW
%token LCURLY RCURLY LPAR RPAR
%token COMMA SEMICOLON ASSIGN
%token UNDERSCORE
%token TRUE FALSE
%token ANDALSO ORELSE
%token BEQ BNEQ BLT BGT BLE BGE
%token BADD BSUB BMUL BDIV BMINUS BMOD
%token EOF
%token <string> GOSPEL_COMMENT

%left SEMICOLON

%left ANDALSO ORELSE
%left BEQ BNEQ BLT BGT BLE BGE
%left BADD BSUB
%left BMUL BDIV BMOD

%right DEREF
%right BMINUS

%start file
%type <Ast.file> file

%%

file:
| items = toplevel* EOF { items }
;

toplevel:
| EXCEPTION x = ident 
    { Texn x }
| DATATYPE ty = tyvar_list x = ident ASSIGN c = constructor_list
    { Tdatatype (ty, x, c) }
| TYPE x = ident ASSIGN c = typ
    { Ttype (x, c) }
| d = def 
    { Tdef d }
| s = GOSPEL_COMMENT 
    { Tgospel_spec s }
;

tyvar_list:
| ty = TYVAR rest = tyvar_list { ty :: rest }
| { [] }

constructor_list:
| c = constructor rest = more_constructors { c :: rest }
;

more_constructors:
| PIPE c = constructor rest = more_constructors { c :: rest }
| { [] }
;

constructor:
| cname = ident args = atyp* { { cname = cname; args = args } }
;

(* Atomicity *)
atyp:
| ty = TYVAR            { TyVar ty }
| x  = ident            { TyName x }
| LPAR t = typ RPAR     { t }
;

typ:
| t = atyp              { t }
| t1 = atyp t2 = typ    { TyApp (t1, [t2]) }
;

def:
| FUN x = ident args = ident* ASSIGN s = expr
      { { name = x; formals = args; body = s } }
;

// stmt: (* WHY IS THERE NO STATEMENTS AND ONLY EXPRESSIONS *)

(* Atomicity *)
aexpr:
| n = NUM { Ecst n }
| TRUE { Ebool true }
| FALSE { Ebool false }
| x = ident { Evar x }
| LPAR e = expr RPAR { e }
| LPAR es = expr_seq RPAR { Etuple es }
;

expr:
| e = aexpr { e }
| cname = ident args = aexpr+ { Econstr(cname, args) }
| f = ident LPAR args = expr* RPAR { Ecall(f, args) } (* SOLUTION FOR FUNCTION CALLING IN () *)
| REF e = expr { Eref e }
| DEREF e = expr %prec DEREF { Ederef e }
| BSUB e = expr %prec BMINUS { Eunop (Bminus, e) }
| e1 = expr o = op e2 = expr { Ebinop (o, e1, e2) }
| IF e = expr THEN s1 = expr ELSE s2 = expr { Eif (e, s1, s2) } (* ML languages dont support if statements without else *)
| LET x = ident ASSIGN e1 = expr IN e2 = expr END { Elet (x, e1, e2) }
| RAISE x = ident { Eraise x }
| e1 = expr ASSIGN_REF e2 = expr { Eassign (e1, e2) }
| CASE e = expr OF cs = case_clauses { Ecase (e, cs) }
| s = GOSPEL_COMMENT { Egospel_inline s }
;

case_clause:
| p = pattern ARROW e = expr { (p, e) }

case_clauses:
| c = case_clause rest = more_case_clauses { c :: rest }

more_case_clauses:
| PIPE c = case_clause rest = more_case_clauses { c :: rest }
| { [] }

apattern:
| TRUE { Pbool true }
| FALSE { Pbool false }
| UNDERSCORE { Pwild }
| n = NUM { Pcst n }
| x = ident { Pvar x }
| LPAR ps = pattern_seq RPAR { Ptuple ps }
;

pattern:
| TRUE { Pbool true }
| FALSE { Pbool false }
| UNDERSCORE { Pwild }
| n = NUM { Pcst n }
| LPAR ps = pattern_seq RPAR { Ptuple ps }
| cname = ident ps = apattern+ { Pconstr(cname, ps) }
| x = ident { Pvar x }

pattern_seq:
| p = pattern rest = more_patterns { p :: rest }

more_patterns:
| COMMA p = pattern rest = more_patterns { p :: rest }
| { [] }

expr_seq:
| e = expr rest = expr_seq_tail { e :: rest }
;

expr_seq_tail:
| COMMA e = expr rest = expr_seq_tail { e :: rest }
| { [] }
;

%inline op:
| BADD { Badd }
| BSUB { Bsub }
| BMUL { Bmul }
| BDIV { Bdiv }
| BMINUS { Bminus }
| BMOD { Bmod }
| ANDALSO  { Bandalso }
| ORELSE   { Borelse }
| BEQ  { Beq }
| BNEQ { Bneq }
| BLT  { Blt }
| BGT  { Bgt }
| BLE  { Ble }
| BGE  { Bge }
;

ident:
| x = IDENT { mk_id x $startpos $endpos }
