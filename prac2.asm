.model small
.stack 100h
.data
    A db "Enter a character: $"
    capital db 10,13,"Capital Letter $"
    small db 10,13,"Small Letter $"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, A
    int 21h
    
    mov ah, 1
    int 21h
    
    cmp al, 'A'
    jl Small_Letter
    cmp al, 'Z'
    jg Small_Letter
    jmp Capital_Letter


Small_Letter:
    mov ah, 9
    lea dx, small
    int 21h
    jmp exit
    
Capital_Letter:
    mov ah, 9
    lea dx, capital
    int 21h
    jmp exit
    
exit:
    mov ah, 4ch
    int 21h
main endp
end
