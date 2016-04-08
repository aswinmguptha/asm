;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                              ;
; Author    :   Aswin M Guptha                                                 ;
; Date      :   14/2/2016                                                      ;
; Program   :   print sum of two numbers which are entered by user             ;
;                                                                              ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


extern printf
extern scanf

section .data
    input :    db "%d"                  ; input format for scanf
    num1  :    dd 0                     ; first number
    num2  :    dd 0                     ; second number
    output:    db "Sum is %d", 10, 0    ; output format for printf
    prompt:    db "Enter a number: ", 0 ; prompt to enter input

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        push prompt                     ; Push address of prompt onto stack
        call printf                     ; Display prompt
        add esp, 4

        push num1                       ; Push address of first number onto stack
        push inp                        ; Push address of input format onto stack
        call scanf                      ; Call scanf
        add esp, 8

        push prompt                     ; Push address of prompt onto stack
        call printf                     ; Display prompt
        add esp, 4

        push num2                       ; Push address of second number onto stack
        push inp                        ; Push address of input format onto stack
        call scanf                      ; Call scanf
        add esp, 8

        mov eax, DWORD [num1]           ; Move 4 bytes at address num1 into EAX
        add eax, DWORD [num2]           ; Move 4 bytes at address num2 into EAX

        push eax                        ; Push sum onto the stack
        push out                        ; Push output format onto stack
        call printf                     ; Call printf

        add esp, 8
        mov eax, 0
        leave
        ret
