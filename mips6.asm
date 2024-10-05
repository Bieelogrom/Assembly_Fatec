.data
	valorUm: .asciiz"Digite o primeiro valor: "
	valorDois: .asciiz"Digite o segundo valor: "
	resultado: .asciiz"Resultado: "
.text
main:
	li $v0, 4
	la $a0, valorUm
	syscall
	li $v0, 5
	syscall
	mul $t1, $v0, 1
	li $v0, 4
	la $a0, valorDois
	syscall
	li $v0, 5
	syscall
	mul $t2, $v0, 1
	beq $t1, $t2, entao
	j senao
	entao:
	add $t3, $t1, $t2
	j fimse
	senao:
	mul $t3, $t1, $t2
	fimse:
	li $v0, 4
	la $a0, resultado
	syscall
	li, $v0, 1
	add $a0, $t3, 0
	syscall
	