;LEs deux types de décalage

;Décalage logique vers la droite (Shift Right) : SHR opérande,n
MOV AL , 11001011B
SHR AL , 1

;Décalage logique vers la gauche (Shift Left) : SHL opérande,n
MOV AL , 11001011B
SHL AL , 1

;Décalage arithmétique vers la droite : SAR opérande,n
MOV AL , 11001011B
SAR AL , 1

;on veut avoir la valeur du quartet de poids fort du registre AL :
MOV AL , 11001011B
MOV CL , 4
SHR AL , CL

;un décalage à droite revient à faire une division par 2 et un décalage à gauche, une multiplication par 2.
MOV AL , 48
MOV CL , 3  ;-> AL=48/2^3=6
SHR AL , CL