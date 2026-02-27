
# all: cakeml_compiler.exe
# 	./cakeml_compiler.exe --debug test.cml
# 	gcc -no-pie -g test.s && ./a.out

all: cakeml_compiler.exe
	./cakeml_compiler.exe test.cml

cakeml_compiler.exe:
	dune build cakeml_compiler.exe

clean:
	dune clean

.PHONY: all clean cakeml_compiler.exe
