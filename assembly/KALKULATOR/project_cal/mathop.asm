;Function add(int a, int b)- rdi, rsi

    global addd
    section .text
addd:
    mov rax, rdi
    add rax, rsi
    ret

    global subb
    section .text
subb:    
    mov rax, rdi
    sub rax, rsi
    ret

    global mltply
    section .text
mltply:    
    mov rax, rdi
    imul rax, rsi
    ret

    global divide
    section .text
divide:
    cmp rsi, 0
    je zero

    mov rax, rdi
    xor rdx, rdx    ;dzielimy rdx:rax / rbx
    mov rcx, rsi

    div rcx

    ret
zero:
    xor rax, rax
    ret

    global modulo
    section .text
modulo: 
    cmp rsi, 0
    je zero2
    
    mov rax, rdi
    xor rdx, rdx    ;dzielimy rdx:rax / rbx
    mov rcx, rsi

    idiv rcx

    mov rax, rdx

    ret

zero2:
    mov rax, -1
    ret

 global silnia
    section .text
silnia:
    cmp rdi, 1  
    jl zero3    ;0!=1

    xor rcx, rcx
    mov rcx, rdi
engine:
        dec rdi
        imul rcx, rdi

        cmp rdi, 2
        jge engine
        mov rax, rcx
        ret

zero3:
    mov rax, 1
    ret

    global expo
    section .text
expo:
    cmp rsi, 0
    jl less2
    mov rcx, rsi

    loop:
        cmp rcx, 1
        jl less
        imul rdi, rdi
        dec rcx
        
        cmp rcx, 2
        jge loop

    less:
        mov rax, rdi
        ret
    less2:
        mov rax, 0
        ret

