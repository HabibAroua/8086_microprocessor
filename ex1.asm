;on veut additionner deux nombres qui se trouvent aux offsets 1100 et 1101
;le resultat est rangé dans :
;1102 s'il positif
; 1103 s'il negatif
; 1104 s'il nul
 
MOV AL , [1100]
ADD AL , [1101]
JS negatif
JZ nul
MOV [1102] , AL
JMP fin
negatif : MOV[1103] , AL
JMP fin
nul : MOV [1104] , AL
fin : int 20