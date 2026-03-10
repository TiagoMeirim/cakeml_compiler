open Format
open Lexing
open Imports

let usage = "usage: while [options] file.cml"

let debug = ref false
let parse_only = ref false
let type_only = ref false

let spec =
  [
    "--debug", Arg.Set debug, "  debug mode";
    "--parse-only", Arg.Set parse_only, "  stop after parsing";
    "--type-only", Arg.Set type_only, "  stop after static typing";
  ]

let file =
  let file = ref None in
  let set_file s =
    if not (Filename.check_suffix s ".cml") then
      raise (Arg.Bad "no .cml extension");
    file := Some s
  in
  Arg.parse spec set_file usage;
  match !file with Some f -> f | None -> Arg.usage spec usage; exit 1

let debug = !debug

let report (b,e) =
  let l = b.pos_lnum in
  let fc = b.pos_cnum - b.pos_bol + 1 in
  let lc = e.pos_cnum - b.pos_bol + 1 in
  eprintf "File \"%s\", line %d, characters %d-%d:\n" file l fc lc

let module_name =
  Filename.basename file
  |> Filename.remove_extension
  |> String.capitalize_ascii

let () =
  let c = open_in file in
  let lb = Lexing.from_channel c in
  try
    (* Phase 1 - cakeml parsing *)
    let ast = Parser.file Lexer.token lb in
    close_in c;

    if !parse_only then exit 0;

    (* Phase 2 - ast to gast *)
    let gast = Ast2gast.ast_to_gast ast in
    (* Printf.printf "GAST phase done, %d toplevel items\n" (List.length gast);
    List.iter (function
      | Gast.GTgospel_func _ -> Printf.printf "Gospel spec parsed successfully!\n"
      | Gast.GTgospel_axiom _ -> Printf.printf "Gospel spec parsed successfully!\n"
      | Gast.GTdef d -> (match d.spec with
        | Some _ -> Printf.printf "Def %s with gospel spec parsed successfully!\n" d.name.id
        | None   -> Printf.printf "Def %s parsed successfully!\n" d.name.id)
      | _ -> ()
    ) gast; *)
    let pp_new_line fmt () = Format.fprintf fmt "@\n@\n" in
    let pp_gtoplevel_indented fmt item = Format.fprintf fmt "  %a" Pp_gast.pp_gtoplevel item in
    Format.eprintf "module %s\n\n" module_name;
    let imports = collect_imports gast in
      StringSet.iter ( fun imp -> Format.eprintf "  %s\n" imp ) imports;
    Format.eprintf "\n";
    Format.(eprintf "%a@." 
      (pp_print_list ~pp_sep:pp_new_line pp_gtoplevel_indented) gast);
    Format.eprintf "\nend\n"
  with
    | Lexer.Lexing_error s ->
	report (lexeme_start_p lb, lexeme_end_p lb);
	eprintf "lexical error: %s@." s;
	exit 1
    | Parser.Error ->
	report (lexeme_start_p lb, lexeme_end_p lb);
	eprintf "syntax error@.";
	exit 1
    | e ->
	eprintf "Anomaly: %s\n@." (Printexc.to_string e);
	exit 2
