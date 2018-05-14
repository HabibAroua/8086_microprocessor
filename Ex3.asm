;Excrire un programme qui teste que bit 7 de AL 
;1) Si le bit 7 de AL=0 , faire un seut décalage à droite de BX de 15 position
;2) Si le bit 7 de AL=1 , faire une série de 15 décalage à gauche de 1 bit chacun

AND AL , 80
JZ zero
MOV CX , 15
E1 : SHL BX , 1
     DEC CX
	 COMP CX , 0
	 JNZ E1
	 JMP fin
zero : MOV CL , 15
       SHR BX , CL
fin : int 20