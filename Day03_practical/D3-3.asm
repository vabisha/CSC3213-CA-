.model small
.stack 100h

.data
msg1 db "Enter the number1 : $"
n1 db 0
msg2 db "Enter the number2: $"
n2 db 0
msg3 db "Subtraction of n1 and n2 is: $"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov ah,01h
int 21h
mov dl,al
sub dl,48
mov n1,dl

mov dl,10
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h
int 21h
mov dl,al
sub dl,48
mov n2,dl

mov dl,10
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov dl,n1
sub dl,n2
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start