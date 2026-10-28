include irvine32.inc

.data
	array sword -4, -9, 0, -17, 25, 3
	negCount byte 0
	evenCount byte 0
.code
main proc
	mov eax, 0
	mov esi, offset array
	mov ecx, lengthof array
	L1:
		mov ax, [esi]
		cmp ax, 0
		jge isPos
		inc negCount
		isPos:
			test ax, 1
			jnz isOdd
			inc evenCount
		isOdd:
		add esi, type array
		loop L1
		movzx eax, negCount
		call writedec
		call crlf
		movzx eax, evenCount
		call writedec
		call crlf

exit
main endp

end main
