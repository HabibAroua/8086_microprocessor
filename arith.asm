;exemple des operation arithmétqie
;L'addition et soustraction ont le même principe
;Multiplication

MOV al,51
MOV bl,32 ; ➔AX = 51* 32
MUL bl
;
MOV ax,4253
MOV bx,1689 ;➔ (DX,AX)=4253*1689
MUL bx

MOV al,43
MOV byte [1200H],28 ;➔ AX=43*28
MUL byte [1200H]

MOV ax,1234
MOV word [1200H],5678 ;➔ (DX,AX)=1234*5678
MUL word [1200H]

;Division
MOV ax,35
MOV bl,10 ;➔ AL=3 (quotient) et AH=5 (reste)
DIV bl

MOV dx,0
MOV ax,1234 ;➔ AX=123 (quotient) et DX=4 (reste)
MOV bx,10
DIV bx
