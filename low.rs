
#[no_mangle]
pub extern fn hello_rust() -> *const u8 {
    "Hello, World!\0".as_ptr()
}
