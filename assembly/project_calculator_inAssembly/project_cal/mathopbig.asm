;BIG NUMBERS CAŁKOWITE
section .text
    global addBig

addBig:
    ; Parameters:
    ; rdi - pointer to first array (a)
    ; rsi - pointer to second array (b)
    ; rdx - size A
    ; rcx - size B
    ; r8 - result size

    mov r10, rdi

  ;-----result size in r8 i r9
    mov    r8, rdx
    mov    r9, r8
    add    r8, rcx
  ;-----------------------

    dec r8
    mov rax, r8
    mov rdi, 4
    imul rax, rdi
    mov rdi, rax
    add r10, rax
    add rsi, rax
  ;--przesunięcie wskaźników na koniec tablic  o (result_size-1) *4

    cmp     r9, 0                   ; check if length is zero
    je      done                    ; if length is zero, exit

    xor     rcx, rcx                ; clear carry flag (rcx will hold the carry)

next:
    mov     eax, [r10]              ; load element from first array into eax
    add     eax, [rsi]              ; add element from second array
    add     eax, ecx                ; add carry from previous addition
    mov     ecx, 0                  ; reset carry

    cmp     eax, 10                 ; check if result is greater than or equal to 10
    jl      save                    ; if less, skip carry handling

    sub     eax, 10                 ; subtract 10
    mov     ecx, 1                  ; set carry to 1

save:
    mov     [r10], eax              ; store result back into first array

    sub     r10, 4                  ; move to next element in first array
    sub     rsi, 4                  ; move to next element in second array

    dec     r8                      ; decrement element count
    jnz     next                    ; if more elements, repeat

done:

    ret

section .text
    global subBig

subBig:
    ; Parameters:
    ; rdi - pointer to first array (a)
    ; rsi - pointer to second array (b)
    ; rdx - size A
    ; rcx - size B
    ; r8 - result size

    mov r10, rdi
    mov r11, rcx

  ;-----result size in r8 i r9
    mov    r8, rdx
    mov    r9, r8
    add    r8, rcx
  ;-----------------------

    dec r8
    mov rax, r8
    mov rdi, 4
    imul rax, rdi
    mov rdi, rax
    add r10, rax
    add rsi, rax
  ;--przesunięcie wskaźników na koniec tablic  o (result_size-1) *4

    cmp     r9, 0                   ; check if length is zero
    je      donesub                 ; if length is zero, exit

    xor     rcx, rcx                ; clear borrow flag (rcx will hold the borrow)
    xor     rbx, rbx


 nextsub:
    mov     eax, [r10]              ; load element from first array into eax

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
    mov     [r10], eax              ; store result back into first array

    sub     r10, 4                  ; move to next element in first array
    sub     rsi, 4                  ; move to next element in second array

    dec     r8                     ; decrement element count
    jnz     nextsub                 ; if more elements, repeat

donesub:
    ret

section .text
    global mulBig
    mulBig:
    ; Parameters:
    ; rdi - pointer to first array (a)
    ; rsi - pointer to second array (b)
    ; rdx - size A
    ; rcx - size B
    ; r8 - pointer to result array

    mov r10, rdi
    mov r11, rcx
    mov r13, r11
    mov r15, rdx

    ;-----result size in r9
    mov    r9, rdx
    add    r9, rcx
    ;-----------------------

    dec r9
    mov rax, r9
    mov rdi, 4
    imul rax, rdi
    mov rdi, rax
    add r10, rax
    add rsi, rax
    add r8, rax
    
    mov r12, r10    ; pointer  to first array r12
    ;--przesunięcie wskaźników na koniec tablic  o (result_size-1) *4
    
    cmp     r9, 0                   ; check if length is zero
    je      donemul                 ; if length is zero, exit
    xor    rcx, rcx                ; clear carry flag (rcx will hold the carry)
    xor    r14, r14

    startmul:
       ;wymnażamy górny wiersz
         mov rax, [r10]
         mov rbx, [rsi]
  
         imul rax, rbx
         add eax, ecx
         
         xor ebx, ebx
         xor ecx, ecx
         
            
        petla:    
            cmp rax, 10
            jl no_stop

            sub rax, 10
            inc rcx
            jmp petla

    no_stop:
        mov ebx, [r8]
        add ebx, eax
        mov [r8], ebx
        add [r8], r14

        cmp dword [r8], 10
        jl no_carry
        
        mov r14, 1 
        jmp con 

    no_carry:
        mov r14, 0  
    con:      
        sub r10, 4
        sub r8, 4
        dec r9
        cmp r9, 0
        je nextmul
        jmp startmul

    nextmul:
        ;another number from second array
        mov r10, r12    ;ustaw wskaźnik pierwszej tablicy na nowo
        sub rsi, 4      ;przesuń wskaźnik drugiej tablicy
   
        mov r9, 0
        mov r9, r15
        add r9, r13     ;ustaw znowu długość górnego wiersza
   
        dec r11
        cmp r11, 0
        jz donemul
        jmp startmul
    
    donemul:
        cmp rcx, 0
        je end
        xor rbx, rbx
       
        mov rbx, [r8]
        add rbx, rcx
        mov [r8], rbx
    
        end:
    ret
