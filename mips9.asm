.data
	Dividendo: .asciiz"Digite o valor do dividendo: "
	Divisor: .asciiz"Digite o valor do divisor: "
	Erro: .asciiz"Divisor não pode ser 0! Digite novamente: "
	Resultado: .asciiz"Resultado: "
.text
main:
	li $v0, 4
	la $a0, Dividendo
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, Divisor
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	beq $t2, 0, entao
	j senao
	entao: 
	li $v0, 4
	la $a0, Erro
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	beq $t2, 0, entao
	senao:
	div $t3, $t1, $t2
	j fimse
	fimse:
	li $v0, 4
	la $a0, Resultado
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	