;Ecrire un programme qui fait la somme des entiers de 1 à 16 et stocker dans la case mémoire 1100 the second solution

XOR AX , AX
MOV CX , 16
somme : ADD AX , CX
LOOP somme
MOV [1100] , AX
int 20
