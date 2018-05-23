.386
.model flat, stdcall
option casemap: none
 
include    \masm32\include\kernel32.inc
include \masm32\include\msvcrt.inc
 
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\msvcrt.lib
 
.data
    Phrase    db    "La factorielle de %d est : %d", 10, 0
    n        dd    6
 
.data?
    Result dd 1 dup(?)
.code
 
start:
main:    push ebp
        mov ebp, esp
 
        ; Etape 1, on appelle factorielle(5)
        push n
        call factorielle
 
        ; Etape 2 : on affiche le résultat
        push eax
        push n
        push offset Phrase
        call crt_printf
 
        leave
        ret
 
 
factorielle:
        ; Prologue de la fonction : on sauvegarde la pile
        push ebp
        mov ebp, esp
 
        ; Barratin pour qu'ecx = 1
        xor ebx, ebx
        inc ebx
 
        ; Est-ce que l'argument de factorielle == 1 ? Si oui, on jump sur fin
        cmp [esp+8], ebx
        jz fin
 
        ; Sinon, on place l'argument dans ebx
        mov ebx, [esp+8]
 
        ; On le décrémente et on l'empile pour aller chercher sa factorielle
        dec ebx
        push ebx
        call factorielle
 
        ; On place le résultat de la fonction factorielle dans edx
        ; (Pour info, le premier résultat placé est déclenché par le "mov eax, 1" de fin:
        mov edx, eax
 
        ; On place dans ecx la valeur de l'argument qui a été préalablement empilé
        mov ecx, [esp+12]
 
        ; On fait la multiplication du résultat par l'ancien argument
        mul ecx
 
        ; On place le résultat de la multiplication dans l'ancien argument
        mov [esp+12], eax
 
        ; Et on renvoit ce même résultat - qui reste dans eax - à la routine appelante
        leave
        ret
 
        ; Fin de la fonction : on renvoit 1 dans récursivité
fin:    mov eax, 1
        leave
        ret
 
end start