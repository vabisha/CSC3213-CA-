.model small
.stack 100h

.data
msg db "Enter the number : $"
n1 db 0
.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

mov ah,01h
int 21h
mov n1,al

mov dl,0ah
mov ah,02h
int 21h

mov dl,n1
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start