
# all: cakeml_compiler.exe
# 	./cakeml_compiler.exe --debug test.cml
# 	gcc -no-pie -g test.s && ./a.out

all: cakeml_compiler.exe
	./cakeml_compiler.exe test.cml

cakeml_compiler.exe:
	dune build cakeml_compiler.exe

translate: cakeml_compiler.exe
	@test -n "$(FILE)" || (echo "Usage: make translate FILE=yourfile.cml" && exit 1)
	./$< $(FILE)

clean:
	dune clean

.PHONY: all clean cakeml_compiler.exe
