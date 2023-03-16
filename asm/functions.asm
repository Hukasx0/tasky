section .text

global cwrite
global buflen
global writeF
global sleep
global readFile

cwrite:
   mov rax,1
   syscall
   ret

buflen:
   mov rax,0
   mov rcx,rdi
   .iter:
      cmp byte [rcx], 0
      je .end
      inc rax
      inc rcx
      jmp .iter
   .end:
      ret

writeF:
   mov rbx,rsi
   mov r8,rdx
   mov rax,2
   mov rsi, 577
   mov rdx, 0o666
   syscall
   mov rdi,rax
   mov rsi,rbx
   mov rdx,r8
   mov rbx,rax
   mov rax,1
   syscall
   mov rax,3
   mov rdi,rbx
   syscall
   ret

sleep:
   push rbp
   mov rbp,rsp
   push rdi
   mov rdi,qword [rbp+16]
   mov rsi,0
   mov rax,35
   syscall
   pop rdi
   leave
   ret

readFile:
   push rbp
   mov rbp,rsp
   mov rax,2
   mov rsi,0
   syscall
   mov rbx,rax
   mov rax,0
   mov rdi,rbx
   mov rsi,buff
   mov rdx,10000
   syscall
   mov rax,3
   mov rdi,rbx
   syscall
   mov rax,buff
   leave
   ret

section .bss
   buff resb 10000
