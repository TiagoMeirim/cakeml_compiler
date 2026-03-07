%{
    open Ast

    let mk_id id startpos endpos =
      { loc = (startpos, endpos); id }
%}

%token <int> NUM
%token <string> IDENT
%token <string> STRING
%token IF THEN ELSE LET VAL IN END
%token PRINT
%token FUN
%token EXCEPTION RAISE
%token DATATYPE
%token <string> TYVAR
%token TYPE
%token PIPE
%token REF DEREF ASSIGN_REF
%token CASE OF ARROW
// %token LCURLY RCURLY
%token LPAR RPAR
%token COMMA SEMICOLON ASSIGN
%token UNDERSCORE
%token TRUE FALSE
%token ANDALSO ORELSE
%token BNEQ BLT BGT BLE BGE
%token BADD BSUB BMUL BDIV BMINUS BMOD
%token LSBRACKET RSBRACKET CONS APPEND
%token EOF
%token <string> GOSPEL_COMMENT

// %left SEMICOLON

%left ANDALSO ORELSE
%left BNEQ BLT BGT BLE BGE
%left BADD BSUB
%left BMUL BDIV BMOD
%left APPEND

%right DEREF
%right BMINUS
%right CONS

%start file
%type <Ast.file> file

%%

file:
| items = toplevel* EOF { items }
;

toplevel:
| EXCEPTION x = ident option(SEMICOLON)
    { Texn (x, None) }
| EXCEPTION x = ident t = atyp option(SEMICOLON)
    { Texn (x, Some t) }
| DATATYPE ty = tyvar_list x = ident ASSIGN c = constructor_list option(SEMICOLON)
    { Tdatatype (ty, x, c) }
| TYPE x = ident ASSIGN c = typ option(SEMICOLON)
    { Ttype (x, c) }
| d = def option(SEMICOLON)
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

(* Atomicity *)
aexpr:
| n = NUM { Ecst n }
| TRUE { Ebool true }
| FALSE { Ebool false }
| s = STRING { Estring s }
| x = ident { Evar x }
| LPAR e = expr RPAR { e }
| LPAR es = expr_seq RPAR { Etuple es }
| LSBRACKET RSBRACKET { Enil }
| LSBRACKET l = list_elements RSBRACKET { Elist l }
;

expr:
| e = aexpr { e }
| PRINT e = aexpr { Eprint e }
| f = ident args = aexpr+ {
    if Char.uppercase_ascii f.id.[0] = f.id.[0]
    then Econstr(f, args)
    else Ecall(f, args) }
| REF e = expr { Eref e }
| DEREF e = expr %prec DEREF { Ederef e }
| BSUB e = expr %prec BMINUS { Eunop (Bminus, e) }
| e1 = expr o = op e2 = expr { Ebinop (o, e1, e2) }
| IF e = expr THEN s1 = expr ELSE s2 = expr { Eif (e, s1, s2) }
| LET VAL x = ident ASSIGN e1 = expr IN e2 = expr END { Elet (x, e1, e2) }
| RAISE x = ident { Eraise x }
| e1 = expr ASSIGN_REF e2 = expr { Eassign (e1, e2) }
| CASE e = expr OF cs = case_clauses { Ecase (e, cs) }
| e1 = expr CONS e2 = expr { Econs (e1, e2) }
| e1 = expr APPEND e2 = expr { Eappend (e1, e2) }
;

list_elements:
| e = aexpr { [e] }
| e = aexpr COMMA rest = list_elements { e :: rest }

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
| LPAR p = pattern RPAR { p }
| LPAR ps = pattern_seq RPAR { Ptuple ps }
| LSBRACKET RSBRACKET { Pnil }
| LSBRACKET l = pat_elements RSBRACKET { Plist l }
;

pat_elements:
| p = apattern { [p] }
| p = apattern COMMA rest = pat_elements { p :: rest }

pattern:
| p = apattern { p }
| cname = ident ps = apattern+ { Pconstr(cname, ps) }
| p1 = apattern CONS p2 = apattern { Pcons(p1, p2) }
;

pattern_seq:
| p = pattern rest = more_patterns { p :: rest }
;

more_patterns:
| COMMA p = pattern rest = more_patterns { p :: rest }
| { [] }
;

expr_seq:
| e = expr rest = expr_seq_tail { e :: rest }
;

expr_seq_tail:
| COMMA e = expr rest = expr_seq_tail { e :: rest }
| { [] }
;

%inline op:
| ASSIGN { Bassign }
| BADD { Badd }
| BSUB { Bsub }
| BMUL { Bmul }
| BDIV { Bdiv }
| BMINUS { Bminus }
| BMOD { Bmod }
| ANDALSO  { Bandalso }
| ORELSE   { Borelse }
| BNEQ { Bneq }
| BLT  { Blt }
| BGT  { Bgt }
| BLE  { Ble }
| BGE  { Bge }
;

ident:
| x = IDENT { mk_id x $startpos $endpos }
;
