#include "asminclude.h"

int main(int argc, char **argv){
  if (argc != 2){
    char str1[30] = "Usage: ";
    char *str2 = argv[0];
    char *f = str1+7;
    char str3[] = " <filename>.ty\n";
    int i = 0;
    while (*str2){
      *f = *str2;
      f++;
      str2++;
    }
    while (str3[i]){
      *f = str3[i];
      f++;
      i++;
    }
    *f = '\0';
    print(str1);
  }
  else{
    const char* fData = readFile(argv[1]);
    print(fData);
  }
  return 0;
}
