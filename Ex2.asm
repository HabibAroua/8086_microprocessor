;Ecrire un programme qui fait la somme des entiers de 1 à 16 et stocker dans la case mémoire 1100

MOV AX , 0
MOV CX , 16
somme : ADD AX , CX
DEC CX
CMP CX , 0
JNZ somme
MOV [1100] , AX
int 20