.model small
.stack 100h
.data
msg1 db "Enter 2 digit number $"
n1 db 0
n2 db 0
n3 db 0
a db 10

.code
start:
    mov ax,@data
	mov ds,ax
	
	mov dx,offset msg1
	mov ah,09h
	int 21h

	mov ah,01h
	int 21h

	mov al,dl
	sub dl,48
	mov n1,dl

	mov al,n1
	mul a
	mov dl,al
	add dl,48

	mov ah,01h
	int 21h

	mov al,dl
	sub dl,48
	mov n2,dl

	mov dl,0ah
	mov ah,02h
	int 21h
	;;;;printing the number
	mov ah,00
	mov bl,10
	mov dl,al
	div bl
	mov n3,ah
	
	mov dl,al
	add dl,48
	mov ah,02h
	int 21h
	
	mov dl,n3
    add dl,48
    mov ah,02h
    int 21h

	mov ax,4c00h
	int 21h

end start