	.data
arr: 	.space 20

.text
main:
li $t0,3434343298          #entry of 1st number from $t0 to $t3
li $t1,5131483648
li $t2,4338967295  
li $t3,2147483648
li $t4,2147483648         #entry of 2st number from $t4 to $t7
li $t5,4294967295  
li $t6,2147483648
li $t7,3295467295   
li $t8,0                  #carry out
li $s4,0                  #overflow
li $s5,0		# s5 = carry bit 129th bit

li $s1,0                  #$s1 = $t1 + $t5
li $s3,0                  #$s3 = $t3 + $t7
li $s2,0                  #$s2 = $t2 + $t6

li $s0,0                  #$s0 = $t0 + $t4


sltu $t8,$s0,$t4
addu $t1,$t1,$t8

addu $s0,$t0,$t4


addu $s1,$t1,$t5
sltu $t8,$s1,$t5
addu $t2,$t2,$t8
addu $s2,$t2,$t6
sltu $t8,$s2,$t6
addu $t3,$t3,$t8
addu  $s3,$t3,$t7
sltu  $s4,$s3,$t7

addi $t0,$zero,0		# stores int the array
sw $s4,arr($t0)			
addi $t0,$t0,4			#answer s4,s3,s2,s1,s0
sw $s3,arr($t0)
addi $t0,$t0,4
sw $s2,arr($t0)
addi $t0,$t0,4
sw $s1,arr($t0)
addi $t0,$t0,4
sw $s0,arr($t0)


jr $ra  
.end main 
