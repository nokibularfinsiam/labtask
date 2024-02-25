.model small
.stack 100h
.data
A db "Enter A number : $"
zero db 10,13,"The number is zero $"
pos db 10,13,"Positive $"
neg_ db 10,13,"Negative $"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, A
    int 21h
    
    mov ah, 1
    int 21h
    
    cmp al, '0'
    jg Positive
    jl Negative
    
    mov ah, 9
    lea dx, zero
    int 21h
    jmp exit
    
Positive: 
    mov ah, 9
    lea dx, pos
    int 21h
    jmp exit
    
Negative:
    mov ah, 1
    int 21h
    
    mov ah, 9
    lea dx, neg_ 
    int 21h
    jmp exit
    
exit:
   mov ah, 4ch
   int 21h
   main endp
end