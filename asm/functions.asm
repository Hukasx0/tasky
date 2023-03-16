section .text

global cwrite
global buflen

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
