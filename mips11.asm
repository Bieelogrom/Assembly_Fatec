.data
	contadorNumerico: .asciiz"Digite quantas vezes vai contar: "
	valor: .asciiz"Digite o número desejado (0 até 100): "
	aa: .asciiz"[0-25]: "
	be: .asciiz"\n[26-50]: "
	ce: .asciiz"\n[51-75]: "
	de: .asciiz"\n[76-100]: "
.text
main:
	li $v0, 4
	la $a0, contadorNumerico
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	#add $t2, $t2, 0 : Teste
	
	loop:
	blt $t2, $t1, entao
	j senao
	entao: 
	Limite:
	li $v0, 4
	la $a0, valor
	syscall
	
	li $v0, 5
	syscall
	
	blt $v0, 0, Limite
	ble $v0, 100, permitido
	j Limite
	permitido:
	
	add $t2, $t2, 1
	
	bgtz $v0, ver1
	j senaose 
	ver1:
	ble $v0, 25, opt1
	j senaose
	opt1:
	add $t3, $t3, 1
	j loop
	
	senaose:
	bge $v0, 26, ver2
	j senaosese
	ver2:
	ble $v0, 50, opt2
	j senaosese
	opt2:
	add $t4, $t4, 1
	j loop
	
	senaosese:
	bge $v0, 51, ver3
	j senaosesese
	ver3:
	ble $v0, 75, opt3
	j senaosesese
	opt3:
	add $t5, $t5, 1
	j loop
	
	senaosesese:
	bge $v0, 76, ver4
	j senaosesese
	ver4:
	ble $v0, 100, opt4
	j senaosesese
	opt4:
	add $t6, $t6, 1
	j loop
	
	senao:
	
	#t3 0-25
	li $v0, 4
	la $a0, aa
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	#t4 26-50
	li $v0, 4
	la $a0, be
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	#t5 51-75
	li $v0, 4
	la $a0, ce
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	
	#t6 76-100
	li $v0, 4
	la $a0, de
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall
	
	
	
	