
all: liblow.dylib cmain

liblow.dylib: low.rs
	rustc --crate-type=dylib low.rs

cmain: main.c
	cc -o cmain main.c

clean:
	rm cmain
	rm *.dylib

.PHONY: clean
