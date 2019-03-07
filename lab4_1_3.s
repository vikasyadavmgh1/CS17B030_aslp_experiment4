main:
li $t0,10
li $t2,0	#for 0
li $t4,0	#for 1
li $t3,0 #for 32 bits
li $t5,0 #previous
loop:
beq $t3,32,exit
addi $t3,$t3,1
andi $t1,$t0,1
srl $t0,$t0,1
beq $t3,1,fir
beq $t1,$t5,loop
beq $t1,1,loop2
addi $t2,$t2,1
move $t5,$t1
j loop

fir:
beq $t1,1,loop2
addi $t2,$t2,1
move $t5,$t1
j loop


loop2:
addi $t4,$t4,1
move $t5,$t1
j loop
exit: