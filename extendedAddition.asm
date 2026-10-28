include irvine32.inc

.data
	numA dword 4 dup(?)
	numB dword 4 dup(?)
	numC dword 4 dup(?)
.code
main proc
	mov esi, offset numA + (lengthof numA - 1) * type numA
	mov edi, offset numB + (lengthof numB - 1) * type numB
	mov ebx, offset numC + (lengthof numC - 1) * type numC
	mov ecx, lengthof numA
	clc
	L1:
		mov eax, [esi]
		adc eax, [edi]
		mov [ebx], eax
		pushfd
		sub esi, type numA
		sub edi, type numB
		sub ebx, type numC
		popfd
	loop L1
exit
main endp

end main
