#ExercícioUm
.data
	base: .asciiz"Digite o valor da base: " 
	altura: .asciiz"Digite o valor da altura: "
	area: .asciiz"Área do retângulo: "
.text
main:
	li $v0, 4
	la $a0, base
	syscall
	
	li $v0, 5	
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5	
	syscall
	
	mul, $t2, $v0, 1
	
	li $v0, 4
	la $a0, area
	syscall
	
	mul $t3, $t1, $t2
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
