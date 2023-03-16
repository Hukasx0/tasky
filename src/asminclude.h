extern void cwrite(int t,const char* txt, long int len);
extern long int buflen(const char* txt);
extern void writeF(const char* filename, const char* text, long int len);
extern void sleep(long int seconds);
extern const char* readFile(const char* filename);

#define print(s) cwrite(1,s,buflen(s))
#define writeFile(s1, s2) writeF(s1, s2, buflen(s2))
