name "spaceInvaderShape"
 
 
#make_COM#
CSEG SEGMENT
 
ASSUME CS:CSEG, DS:CSEG, ES:CSEG
ORG 100H
 
org 100h
 
mov ah, 0 ; On passe en mode graphique.
mov al, 13h ; mode 13h = 320x200 pixels, 256 colors.
int 10h ; set it! 
 
xToDrawInvader equ 15 ;Colone 15
yToDrawInvader equ 15 ;Ligne15
colorToDrawInvader equ 15 ;Blanc
 
call DrawASpaceInvader ;Tracer un Invader
 
; pause the screen for dos compatibility:
 
;wait for keypress
mov ah,00
int 16h 
 
; return to text mode:
mov ah,00 ; set display mode function.
mov al,03 ; normal text mode 3
int 10h ; set it!
  
  
DrawASpaceInvader:   
 
;Ligne 1
mov cx, xToDrawInvader + 10 ; column
mov dx, yToDrawInvader + 2 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h  
 
   
mov cx, xToDrawInvader + 11 ; column
mov dx, yToDrawInvader + 2 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
 
mov cx, xToDrawInvader + 12 ; column
mov dx, yToDrawInvader + 2 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
 
mov cx, xToDrawInvader + 13 ; column
mov dx, yToDrawInvader + 2 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h  
 
mov cx, xToDrawInvader + 14 ; column
mov dx, yToDrawInvader + 2 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
 
mov cx, xToDrawInvader + 15 ; column
mov dx, yToDrawInvader + 2 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h   
 
;ligne 1 : 6 colonnes
 
;ligne 2      
mov cx, xToDrawInvader + 8 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 9 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
 
mov cx, xToDrawInvader + 10 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h 
 
mov cx, xToDrawInvader + 11 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h 
mov cx, xToDrawInvader + 12 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h 
 
mov cx, xToDrawInvader + 13 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h    
 
mov cx, xToDrawInvader + 14 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h 
mov cx, xToDrawInvader + 15 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h         
mov cx, xToDrawInvader + 16 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel  
int 10h
mov cx, xToDrawInvader + 17 ; column
mov dx, yToDrawInvader + 3 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
 
; ligne 2: 10 colonnes
 
;ligne 3
   
 
mov cx, xToDrawInvader + 7 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 8 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h        
mov cx, xToDrawInvader + 10 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h  
 
 
mov cx, xToDrawInvader + 12 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h 
 
mov cx, xToDrawInvader + 14 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h   
  
mov cx, xToDrawInvader + 16 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h   
mov cx, xToDrawInvader + 17 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h  
mov cx, xToDrawInvader + 18 ; column
mov dx, yToDrawInvader + 4 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h     
 
; ligne 4
 
mov cx, xToDrawInvader + 6 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h   
mov cx, xToDrawInvader + 7 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 8 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 9 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 10 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 11 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 12 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 13 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h                
mov cx, xToDrawInvader + 14 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 15 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 16 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 17 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h  
mov cx, xToDrawInvader + 18 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 19 ; column
mov dx, yToDrawInvader + 5 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h  
 
; ligne 5
 
mov cx, xToDrawInvader + 8 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h            
mov cx, xToDrawInvader + 9 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h      
mov cx, xToDrawInvader + 10 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h      
mov cx, xToDrawInvader + 12 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h    
mov cx, xToDrawInvader + 13 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h   
mov cx, xToDrawInvader + 15 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h    
mov cx, xToDrawInvader + 16 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h    
mov cx, xToDrawInvader + 17 ; column
mov dx, yToDrawInvader + 6 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
  
 
;ligne 6
mov cx, xToDrawInvader + 9 ; column
mov dx, yToDrawInvader + 7 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
mov cx, xToDrawInvader + 16; column
mov dx, yToDrawInvader + 7 ; row
mov al, colorToDrawInvader ; white
mov ah, 0ch ; put pixel
int 10h
 
ret