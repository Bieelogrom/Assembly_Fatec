.data
	horas_trabalhadas: .asciiz"Digite quantas horas foram trabalhadas (mês):"
	horasExt_trabalhadas: .asciiz"Digite quantas horas extra foram trabalhadas: "
	desconto: .asciiz"Digite quanto foi descontado do seu salário: (valor)"
	salario_bruto: .asciiz"Salário bruto:  "
	salario_liquido: .asciiz"Salário líquido:  "
.text
main:
	li $v0, 4
	la $a0, horas_trabalhadas
	syscall
	
	li $v0, 5
	syscall 
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, horasExt_trabalhadas
	syscall
	
	li $v0, 5
	syscall 
	
	mul $t2, $v0, 1
	
	mul $t1, $t1, 10
	mul $t2, $t2, 15
	
	add $t1, $t1, $t2
	
	li $v0, 4
	la $a0, desconto
	syscall
	
	li $v0, 5
	syscall 
	
	sub $t2, $t1, $v0
	
	li $v0, 4
	la $a0, salario_bruto
	syscall
	
	li, $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, salario_liquido
	syscall
	
	li, $v0, 1
	add $a0, $t2, 0
	syscall
	
	
	
	
	
	
