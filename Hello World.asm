section	.text			; the code section of assmebly
	global	_start		; must be declared to start

_start:				;starts program
<<<<<<< HEAD
	mov edx,len		;message length
=======
	mov edx,len		;message length 
>>>>>>> e509fbe436bb07ad84f9ece58e499514b47bc550
	mov ecx,msg		;message to write
	mov ebx,1		;file descriptor (9stdout)
	mov eax,4		;system call number (sys_write)
	int 0x80		;call kernel

	mov eax,1		;system call number (sys_exit)
	int 0x80		;call kernel

section	.data			;data section is used for declaring initialized data or constants
msg db 'Hello, World!',	0xa	;string to be printed
len equ $ - msg			;length of the string
<<<<<<< HEAD


; im a test line
=======
>>>>>>> e509fbe436bb07ad84f9ece58e499514b47bc550
