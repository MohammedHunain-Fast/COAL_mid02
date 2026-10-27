include irvine32.inc

.data
string byte "Fast Nuces", 0
len dword lengthof string - 1
reversed byte 50 dup(0)
.code
main proc
call reverseString
mov edx, offset reversed
call writestring
exit
main endp

reverseString proc
mov ecx, len
mov esi, offset string
Pushloop:
	movzx eax, byte ptr [esi]
	push eax
	inc esi
loop Pushloop
mov ecx, len
mov esi, offset reversed
Poploop:
	pop eax
	mov [esi], al
	inc esi
	loop Poploop

ret
reverseString endp

end main
