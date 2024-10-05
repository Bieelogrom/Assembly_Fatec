.data
	valorUm: .asciiz"Digite o valor desejado: "
	resultado: .asciiz"Resultado: "
.text
main:
	li $v0, 4
	la $a0, valorUm
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	bgtz $t1, entao
	j senao
	entao:
	mul $t1, $t1, 2
	j fimse
	senao: 
	mul $t1, $t1, 3
	j fimse
	fimse:
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	