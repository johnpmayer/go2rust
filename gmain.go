package main

// #include "./iface.h"
import "C"
import "fmt"

func main() {

	gmsg := "Hello, Go!\n"
	fmt.Print(gmsg)
	rmsg := C.hello_rust()
	fmt.Print(rmsg)

}
