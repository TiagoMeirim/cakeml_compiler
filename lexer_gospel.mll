{
  open Gospel_parser

  exception Gospel_lexing_error of string
}

let char = ['a'-'z' 'A'-'Z' '_']
let digit = ['0'-'9']
let ident = char (char | digit)*
let number = digit+
let space = ' ' | '\t'
let newline = '\n'

rule token = parse
  | newline     { Lexing.new_line lexbuf; token lexbuf }
  | space+      { token lexbuf }
  | "requires"  { REQUIRES }
  | "ensures"   { ENSURES }
  | "consumes"  { CONSUMES }
  | "produces"  { PRODUCES }
  | "preserves" { PRESERVES }
  | "variant"   { VARIANT }
  | "checks"    { CHECKS }
  | "axiom"     { AXIOM }
  | "rec"       { REC }
  | "and"       { AND }
  | "invariant" { INVARIANT }
  | "forall"    { FORALL }
  | "exists"    { EXISTS }
  | "true"      { TRUE }
  | "false"     { FALSE }
  | "old"       { OLD }
  | "not"       { NOT }
  | "if"        { IF }
  | "then"      { THEN }
  | "else"      { ELSE }
  | "in"        { IN }
  | "let"       { LET }
  | "with"      { WITH }
  | "fun"       { FUN }
  | "type"      { TYPE }
  | "raises"    { RAISES }
  | ['A'-'Z'] (letter | digit)* as s { UIDENT s }
  | ident as s  { LIDENT s }
  | ['0'-'9']+ as n { INTEGER (n, None) }
  | '"' [^'"']* '"' as s { STRING (String.sub s 1 (String.length s - 2)) }
  | "->"        { ARROW }
  | "<->"       { LRARROW }
  | "&&"        { AMPAMP }
  | "||"        { BARBAR }
  | "/\\"       { CONJ }
  | "\\/"       { DISJ }
  | "<>"        { LTGT }
  | "::"        { COLONCOLON }
  | ".."        { DOTDOT }
  | ":"         { COLON }
  | ","         { COMMA }
  | "."         { DOT }
  | ";"         { SEMICOLON }
  | "|"         { BAR }
  | "_"         { UNDERSCORE }
  | "="         { EQUAL }
  | "("         { LEFTPAR }
  | ")"         { RIGHTPAR }
  | "["         { LEFTSQ }
  | "]"         { RIGHTSQ }
  | "{}"        { LEFTBRCRIGHTBRC }
  | "{"         { LEFTBRC }
  | "}"         { RIGHTBRC }
  | "*"         { STAR }
  | ['<' '>' '+' '-' '/' '%' '^' '&' '~' '?' '@' '!' '#']+ as op { OP1 op }
  | eof         { EOF }
  | _ as c      { raise (Lexing_error
                    ("Ilegal char: " ^ String.make 1 c)) }
