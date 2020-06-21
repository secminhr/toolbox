; usage: getLength str_pointer_reg, length_reg
%macro getLength 2

	%%prologue:
				push rax
				mov %2, 0
	%%count:
				mov al, byte [%1+%2]
				cmp al, 0
				je %%epilogue

				inc %2
				jmp %%count

	%%epilogue:
			    pop rax

%endmacro