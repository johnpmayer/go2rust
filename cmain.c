
#include <stdio.h>
#include "./iface.h"

int main() {
  printf("Hello, C!\n");

  char* from_rust = hello_rust();

  printf("%s",from_rust);
}
