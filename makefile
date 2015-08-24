
all: liblow.dylib

liblow.dylib: low.rs
	rustc --crate-type=dylib low.rs
