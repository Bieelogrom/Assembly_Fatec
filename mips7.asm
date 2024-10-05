.data
	valorUm: .asciiz"Digite o valor de A: "
	resultado: .asciiz"Resultado: "
.text
main:
	li $v0, 4
	la $a0, valorUm
	syscall
	li $v0, 5
	syscall
	mul $t1, $v0, 1
	
	rem $t2, $t1, 2
	
	beq $t2, 0, entao
	j senao
	
	entao:
	add $t1, $t1, 5
	j fimse
	
	senao:
	add $t1, $t1, 8
	j fimse
	
	fimse:
	li $v0, 4
	la $a0, resultado
	syscall
	li, $v0, 1
	add $a0, $t1, 0
	syscall
	
	