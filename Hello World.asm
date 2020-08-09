section	.text			; the code section of assmebly
	global	_start		; must be declared to start

_start:				;starts program
	mov edx,len		;message length
	mov ecx,msg		;message to write
	mov ebx,1		;file descriptor (9stdout)
	mov eax,4		;system call number (sys_write)
	int 0x80		;call kernel

	mov eax,1		;system call number (sys_exit)
	int 0x80		;call kernel

section	.data			;data section is used for declaring initialized data or constants
msg db 'Hello, World!',	0xa	;string to be printed
len equ $ - msg			;length of the string



; memory segments
;
;
;    Data segment − It is represented by .data section and the .bss. The .data section is used to declare the memory region, where data elements are stored for the program. This section cannot be expanded after the data elements are declared, and it remains static throughout the program.
;
;    The .bss section is also a static memory section that contains buffers for data to be declared later in the program. This buffer memory is zero-filled.
;
;    Code segment − It is represented by .text section. This defines an area in memory that stores the instruction codes. This is also a fixed area.
;
;    Stack − This segment contains data values passed to functions and procedures within the program.
;
