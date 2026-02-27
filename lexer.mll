{
  open Parser

  open Buffer

  exception Lexing_error of string

  let kwds = [
    "andalso", ANDALSO;
    "orelse", ORELSE;
    "let", LET;
    "in", IN;
    "end", END;
    "if", IF;
    "then", THEN;
    "else", ELSE;
    "True", TRUE;
    "False", FALSE;
    "fun", FUN;
    "exception", EXCEPTION;
    "raise", RAISE;
    "datatype", DATATYPE;
    "type", TYPE;
    "Ref", REF;
    "case", CASE;
    "of", OF
  ]

  let id_or_kwd =
    let h = Hashtbl.create 4 in
    List.iter (fun (s, t) -> Hashtbl.add h s t) kwds;
    fun x -> try Hashtbl.find h x with Not_found -> IDENT x
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
  | ident as s  { id_or_kwd s }
  | number as n { NUM (int_of_string n) }
  | '\'' ['a'-'z']+ as id { TYVAR id }
  | "(*@"       { let buf = Buffer.create 64 in
                  read_gospel_comment buf lexbuf;
                  GOSPEL_COMMENT (Buffer.contents buf) }
  | "(*"        { read_comment lexbuf; token lexbuf }
  | "!="        { BNEQ }
  | "<="        { BLE }
  | ">="        { BGE }
  | ":="        { ASSIGN_REF }
  | "=>"        { ARROW }
  | '!'         { DEREF }
  | '<'         { BLT }
  | '>'         { BGT }
  | '+'         { BADD }
  | '-'         { BSUB }
  | '*'         { BMUL }
  | '/'         { BDIV }
  | '%'         { BMOD }
  | '{'         { LCURLY }
  | '}'         { RCURLY }
  | '('         { LPAR }
  | ')'         { RPAR }
  | '='         { ASSIGN }
  | '|'         { PIPE }
  | '_'         { UNDERSCORE }
  | ','         { COMMA }
  | ';'         { SEMICOLON }
  | eof         { EOF }
  | _ as c      { raise (Lexing_error
                    ("Ilegal char: " ^ String.make 1 c)) }

and read_gospel_comment buf = parse
  | "*)"        { () }
  | eof         { raise (Lexing_error "Unterminated comment") }
  | _ as c      { Buffer.add_char buf c; read_gospel_comment buf lexbuf }


and read_comment = parse
  | "*)"        { () }
  | eof         { raise (Lexing_error "Unterminated comment") }
  | _           { read_comment lexbuf }
