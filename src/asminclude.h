extern void cwrite(int t,char* txt, long int len);
extern long int buflen(const char* txt);

#define print(s) cwrite(1,s,buflen(s))
