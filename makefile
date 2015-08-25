
all: a.out b.out

liblow.dylib: low.rs
	rustc --crate-type=dylib $^

a.out: cmain.c liblow.dylib
	cc -o a.out $^

b.out: gmain.go
	go build -o b.out gmain.go

clean:
	rm -f *.out
	rm -f *.dylib

.PHONY: clean
