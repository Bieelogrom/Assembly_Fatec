.data
	Cateto_Um: .asciiz"Digite o valor do primeiro cateto: "
	Cateto_Dois: .asciiz"Digite o valor do segundo cateto: "
	hipotenusa: .asciiz"Hipotenusa: "
.text
main:
	li $v0, 4
	la $a0, Cateto_Um
	syscall
	li, $v0, 5
	syscall
	mul $t1, $v0, 1
	li $v0, 4
	la $a0, Cateto_Dois
	syscall
	li, $v0, 5
	syscall
	mul $t2, $v0, 1
	mul $t1, $t1, $t1
	mul $t2, $t2, $t2
	add $t3, $t1, $t2
	add $t4, $t4, 1
	mul $t5, $t4, $t4
	senao:
	ble $t5, $t3, entao
	li $v0, 4
	la $a0, hipotenusa
	syscall
	li, $v0, 1
	sub $a0, $t4, 1
	syscall
	j fimse
	entao:
	add $t4, $t4, 1
	mul $t5, $t4, $t4
	j senao
	fimse:
	
	
	
	
	

	
	
	
