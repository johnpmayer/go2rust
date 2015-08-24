
all: liblow.dylib a.out

liblow.dylib: low.rs
	rustc --crate-type=dylib $^

a.out: cmain.c liblow.dylib
	cc -o a.out $^

clean:
	rm -f *.out
	rm -f *.dylib

.PHONY: clean
