main:
li $t4,17 #number
li $t0,0  #count for 0
li $t1,0  #count for 1
li $t2,0  #for bit counts
li $t3,1  #use for and
loop:

beq $t2,32,exit
addi $t2,$t2,1
andi $t3,$t4,1
beq $t3,1,ex
addi $t0,$t0,1
srl $t4,$t4,1
j loop

ex :
	srl $t4,$t4,1
addi $t1,$t1,1
j  loop

exit :
