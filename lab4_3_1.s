	.data
ai :	.space 24
aisz: .word 6
bi : .space 24
bisz: .word 6	
	.text
main:
lw $t0,aisz          #store array a size
lw $t1,bisz			#store array b size
la $t2,ai 			#t2 saves array a base address
la $t3,bi 			#t3 saves array b base address
move $t4,$t2             #moving base adderess of $t2 into $4
move $t5,$t3             #moving base adderess of $t3 into $t4      
move $t9,$t2 
li $t6,1
li $t7,7
li $t8,0

ini:
beq $t8,6,do
sw $t6,($t4)
sw $t7,($t5)
addi $t4,$t4,4
addi $t5,$t5,4
addi $t8,$t8,1
addi $t6,$t6,1
addi $t7,$t7,1
j ini

do:
addi $t8,$zero,0
move $a0,$t2             #moving base adderess of $t2 into $4
syscall
j loop

loop:
beq $t8,6,exit
addi $t8,$t8,1
lw $t6,($t2)
lw $t7,($t3)
sw $t7,($t2)
sw $t6,($t3)
addi $t2,$t2,4
addi $t3,$t3,4
move $a0,$t9             #moving base adderess of $t2 into $4
syscall
j loop

exit:
