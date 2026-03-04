open Ast
open Gast

let first_keyword s =
  let st = String.trim s in
  try
    let i = String.index st ' ' in
    String.sub st 0 i
  with Not_found -> st

let is_floating s =
  match first_keyword s with
  | "function" | "predicate" | "axiom"| "type" | "open" -> true
  | _ -> false 

let parse_val_spec s =
  let lb = Lexing.from_string s in
  try Some (Gospel.Uparser.val_spec Gospel.Ulexer.token lb)
  with Gospel.Uparser.Error -> None

let parse_func s =
  let lb = Lexing.from_string s in
  try Some (Gospel.Uparser.func Gospel.Ulexer.token lb)
  with Gospel.Uparser.Error -> None

let parse_axiom s =
  let lb = Lexing.from_string s in
  try Some (Gospel.Uparser.axiom Gospel.Ulexer.token lb)
  with Gospel.Uparser.Error -> None

let parse_floating s =
  match first_keyword s with
  | "function" | "predicate" ->
    (match parse_func s with
    | Some f -> GTgospel_func f
    | None -> failwith ("Gospel parser error:" ^ s))
  | "axiom" ->
    (match parse_axiom s with
      | Some a -> GTgospel_axiom a
      | None -> failwith ("Gospel parse error: " ^ s))
  | _ -> failwith ("Unknown floating gospel annotation: " ^ s)

(* Consecutive specs to be merged *)
let rec collect_specs acc = function
  | Tgospel_spec s :: rest when not (is_floating s) ->
      collect_specs (acc ^ " " ^ s) rest
  | remaining -> (acc, remaining)

let rec group items =
  match items with
  | [] -> []
  | Tgospel_spec s :: rest when is_floating s ->
      parse_floating s :: group rest
  | Tgospel_spec s :: rest ->
      let (merged_before, remaining) = collect_specs s rest in
      (match remaining with
      | Tdef d :: rest2 ->
          let (merged_after, remaining2) = collect_specs "" rest2 in
          let full_spec = String.trim (merged_before ^ " " ^ merged_after) in
          let spec = parse_val_spec full_spec in
          GTdef { name = d.name; formals = d.formals; body = d.body; spec }
          :: group remaining2
      | _ -> failwith ("Gospel spec with no function: " ^ s))
  | Tdef d :: rest ->
      let rec collect acc = function
        | Tgospel_spec s :: rest when not (is_floating s) ->
            collect (acc ^ " " ^ s) rest
        | remaining -> (acc, remaining)
      in
      let (merged, remaining) = collect "" rest in
      let spec =
        if String.trim merged = "" then None
        else parse_val_spec merged
      in
      GTdef { name = d.name; formals = d.formals; body = d.body; spec }
      :: group remaining
  | Texn (x, t) :: rest -> GTexn (x, t) :: group rest
  | Tdatatype (ty, x, c) :: rest -> GTdatatype (ty, x, c) :: group rest
  | Ttype (x, c) :: rest -> GTtype (x, c) :: group rest
  
let ast_to_gast items = group items