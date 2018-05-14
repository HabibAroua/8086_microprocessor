;exemple des operation arithmétqie
;L'addition et soustraction ont le même principe
;Multiplication

mov al,51
mov bl,32 ; ➔AX = 51* 32
mul bl

mov ax,4253
mov bx,1689 ;➔ (DX,AX)=4253*1689
mul bx

mov al,43
mov byte [1200H],28 ;➔ AX=43*28
mul byte [1200H]

mov ax,1234
mov word [1200H],5678 ;➔ (DX,AX)=1234*5678
mul word [1200H]

;Division
mov ax,35
mov bl,10 ;➔ AL=3 (quotient) et AH=5 (reste)
div bl

mov dx,0
mov ax,1234 ;➔ AX=123 (quotient) et DX=4 (reste)
mov bx,10
div bx
