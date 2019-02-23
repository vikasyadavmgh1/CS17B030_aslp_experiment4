main:
li $r1,15
li $t0,0
li $t1,0
li $t4,0
LOOP: andi $t2,$r1,1;
	add $t0,$t0,$t2
	bne $t2,$t4,EXIT
	andi $t1,$t1,1
EXIT:
srl	$r1,$r1,1
bne	$s0,$zero,LOOP
