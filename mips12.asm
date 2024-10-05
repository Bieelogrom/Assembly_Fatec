.data
	valorAltura: .asciiz"Digite a altura da pessoa: "
	maiorPessoa: .asciiz"Maior altura: "
	menorPessoa: .asciiz" Menor altura: "
.text
main:
	li $v0, 4
	la $a0, valorAltura
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1 #Maior
	mul $t2, $v0, 1 #Menor
	add $t3, $t3, 1 #Contador
	
	loop:
	blt $t3, 15, entao
	j senao
	entao:
	li $v0, 4
	la $a0, valorAltura
	syscall
	
	li $v0, 5
	syscall
	
	add $t3, $t3, 1 # i = i + 1
	
	bgt $v0, $t1, MudaMaior
	MudaMaior:
	mul $t1, $v0, 1
	j loop
	blt $v0, $t2, MudaMenor
	MudaMenor:
	mul $t2, $v0, 1
	j loop
	
	senao:
	li $v0, 4
	la $a0, maiorPessoa
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, menorPessoa
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	#li $v0, 1
	#add $a0, $t3, 0 #Contador Teste
	#syscall