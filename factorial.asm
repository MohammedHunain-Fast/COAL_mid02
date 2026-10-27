include irvine32.inc

.data

.code
main proc
	push 4
	call factorial
	call writedec
	call crlf
exit
main endp


factorial proc
	push ebp
	mov ebp, esp
	mov eax, [ebp + 8]	
	cmp eax, 0
	ja L1
	mov eax, 1
	jmp L2
	L1:
		dec eax
		push eax
		call factorial
	ReturnFact:
		mul dword ptr[ebp + 8]
		L2:
			pop ebp
			ret 4
		
factorial endp

end main
