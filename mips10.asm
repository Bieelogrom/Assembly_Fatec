.data
	valorA: .asciiz"Digite o primeiro valor: "
	valorB: .asciiz"Digite o segundo valor: "
	resto: .asciiz"Resto da divisão: "
.text
main:
	li $v0, 4
	la $a0, valorA
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, valorB
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	bge $t1, $t2, entao
	j senao
	entao: 
	div $t3, $t1, $t2
	mul $t2, $t3, $t2
	sub $t1, $t1, $t2
	j fimse
	senao:
	div $t3, $t2, $t1
	mul $t3, $t3, $t1
	sub $t1, $t2, $t3 
	j fimse
	fimse:
	
	li $v0, 4
	la $a0, resto
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
