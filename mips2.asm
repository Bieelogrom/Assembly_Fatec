#ExercícioDois
.data
	cam_pequenas: .asciiz"Digite a quantidade de camisas pequenas compradas: " 
	cam_medias: .asciiz"Digite a quantidade de camisas médias compradas: "
	cam_grandes: .asciiz"Digite a quantidade de camisas grandes compradas: "
	valor_arrecadado: .asciiz"Valor arrecadado: "
.text
main:
	li $v0, 4
	la $a0, cam_pequenas
	syscall
	
	li $v0, 5
	syscall 
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, cam_medias
	syscall
	
	li $v0, 5
	syscall 
	
	mul $t2, $v0, 1
	
	li $v0, 4
	la $a0, cam_grandes
	syscall
	
	li $v0, 5
	syscall 
	
	mul $t3, $v0, 1
	
	mul $t1, $t1, 10
	mul $t2, $t2, 12
	mul $t3, $t3, 15

	li $v0, 4
	la $a0, valor_arrecadado
	syscall
	
	add $t1, $t1, $t2
	add $t1, $t3, $t1
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
