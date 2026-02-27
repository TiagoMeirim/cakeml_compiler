(lang dune 3.17)

(using menhir 2.0)

(name cakeml_compiler)

(version 0.1)

(generate_opam_files true)

(source
 (github TiagoMeirim/cakeml_compiler))

(authors "Tiago Meirim <t.meirim@fct.unl.pt>")

(maintainers "Tiago Meirim <t.meirim@fct.unl.pt>")

(license MIT)

(package
 (name cakeml_compiler)
 (synopsis "A compiler for the Cakeml language")
 (description "A compiler from the Cakeml language into X86-64 assembly code")
 (depends ocaml)
 (tags
  ("compilers" "while" "x86")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
