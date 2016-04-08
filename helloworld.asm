;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                              ;
; Author    :   Aswin M Guptha                                                 ;
; Date      :   12/2/2016                                                      ;
; Program   :   print "Hello World" using printf                               ;
;                                                                              ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

extern printf                           ; declare printf as extern

section .data
    message :   db "Hello World", 10, 0 ; message to print

section .text
    global main                         ; entry point for gcc

    main:
        push ebp                        ; saving old base pointer
        mov ebp, esp                    ; setting up current base pointer

        push message              		; push message
        call printf						; print the message

        add esp, 4                      ; pop msg off stack
        mov eax, 0                      ; exit code
        leave                           ; return from function
        ret
