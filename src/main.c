#include "asminclude.h"

int main(void){
  const char* data = readFile("src/main.c");
  writeFile("main_copy.c", data);
  print("OK\n");
  return 0;
}
