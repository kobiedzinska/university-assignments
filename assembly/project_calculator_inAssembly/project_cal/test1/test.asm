section .text
    global addBig

addBig:
    ; Parameters:
    ; rdi - pointer to first array (a)
    ; rsi - pointer to second array (b)
    ; rdx - number of elements (size)

    cmp     rdx, 0                  ; check if length is zero
    je      done                    ; if length is zero, exit

    xor     rcx, rcx                ; clear carry flag (rcx will hold the carry)

next:
    mov     eax, [rdi]              ; load element from first array into eax
    add     eax, [rsi]              ; add element from second array
    add     eax, ecx                ; add carry from previous addition
    mov     ecx, 0                  ; reset carry

    cmp     eax, 10                 ; check if result is greater than or equal to 10
    jl      save                    ; if less, skip carry handling

    sub     eax, 10                 ; subtract 10
    mov     ecx, 1                  ; set carry to 1

save:
    mov     [rdi], eax              ; store result back into first array

    add     rdi, 4                  ; move to next element in first array
    add     rsi, 4                  ; move to next element in second array

    dec     rdx                     ; decrement element count
    jnz     next                    ; if more elements, repeat

done:
    ret

section .text
    global subBig

subBig:
    ; Parameters:
    ; rdi - pointer to first array (a)
    ; rsi - pointer to second array (b)
    ; rdx - number of elements (size)

    cmp     rdx, 0                  ; check if length is zero
    je      donesub                 ; if length is zero, exit

    xor     rcx, rcx                ; clear borrow flag (rcx will hold the borrow)

nextsub:
    mov     eax, [rdi]              ; load element from first array into eax

    sub     eax, [rsi]              ; subtract element from second array
    sub     eax, ecx                ; subtract borrow from previous subtraction
    cmp     rdx, 1                 ; check if this is the last element
    je      savesub                 ; if last element, jump to lastsub
    jmp     checkborrow             ; skip to borrow checking

lastsub:
    sub     eax, [rsi]              ; subtract element from second array (no borrow)
    jmp    savesub                  ; skip to result saving
checkborrow:
    mov     ecx, 0                  ; reset borrow

    cmp     eax, 0                  ; check if result is negative
    jge     savesub                 ; if not negative, skip borrow handling

    add     eax, 10                 ; add 10 to result (equivalent to borrowing)
mom1:
    mov     ecx, 1                  ; set borrow to 1

savesub:
    mov     [rdi], eax              ; store result back into first array

    add     rdi, 4                  ; move to next element in first array
    add     rsi, 4                  ; move to next element in second array

    dec     rdx                     ; decrement element count
    jnz     nextsub                 ; if more elements, repeat

donesub:
    ret

section .text
    global mulBig
mulBig:
    ; Parameters:
    ; rdi - pointer to first array (a)
    ; rsi - pointer to second array (b)
    ; rdx - number of elements (size)
    ; rcx - pointer to result array (c)


    cmp     rdx, 0                  ; check if length is zero
    je      donemul                 ; if length is zero, exit

    xor     rcx, rcx                ; clear carry flag (rcx will hold the carry)
highmul:
    mov  eax, [r8]               ; mnożymy górny wiersz przez 1 element r9
    imul eax, [r9]              
    add rax, rcx                ; dodajemy carry

    cmp     eax, 10                 ; check if result is greater than or equal to 10
    jl      savemul                    ; if less, skip carry handling

    sub     eax, 10                 ; subtract 10
    mov     ecx, 1                  ; set carry to 1


    add [r8], 4
    dec r11
    cmp r11, 0
    jne highmul

downmul:
    mov r11, rdx
    mov r8, r10
    add [r8], 4
    
    
    cmp 
savemul:
    mov ecx, eax
    
donemul:
    ret