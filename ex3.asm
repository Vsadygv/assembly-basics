global _start


section .text 
_start:
  mov ecx,101
  mov ebx,42
  mov eax, 1
  cmp ecx,100
; jmp skip
  jl skip 
  mov ebx, 13
skip:
  int 0x80






;je A,B jump if equal 
;jne A,B jump if not equal
;jg A,B jump if greater
;jge A,B jump is greater or equal
;jl A,B jump if less
;jle A,B jump if less or equal
