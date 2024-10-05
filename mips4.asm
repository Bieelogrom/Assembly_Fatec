.data
	base_menor: .asciiz"Digite o valor da base menor: "
	base_maior: .asciiz"Digit o valor da base maior: "
	altura: .asciiz"Digite o valor da altura: "
	area: .asciiz"Área do trapézio: "
.text
main:
	li $v0, 4
	la $a0, base_menor
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, base_maior
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	
	mul $t3, $v0, 1
	
	add $t1, $t1, $t2
	mul $t2, $t1, $t3
	div $t3, $t2, 2
	
	li $v0, 4
	la $a0, area
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	
	
	
	
	
	
