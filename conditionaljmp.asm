include irvine32.inc

.data
msg1 byte "Greater",0
msg2 byte "Equal",0
msg3 byte "less",0
.code
main proc
mov eax, 3
mov ebx, 2

cmp eax, ebx
ja Greater
je Equal
jb Lesser

Greater:
mov edx, offset msg1
call writestring
call crlf
jmp Done

Equal:
mov edx, offset msg2
call writestring
call crlf
jmp Done

Lesser:
mov edx, offset msg3
call writestring
call crlf
jmp Done

Done:

exit
main endp

end main
