
#[no_mangle]
pub extern fn hello_rust() -> *const u8 {
    "Hello, Rust!\n\0".as_ptr()
}
