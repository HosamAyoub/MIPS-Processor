.data 
msg: .asciiz "please enter three numbers\n"
output1: .asciiz "The sum is "
output2: .asciiz "\nThe average is :"

.text 
main:
la $a0,msg
li $v0 ,4 
syscall 
li $v0,5
syscall 
add $s0 ,$0,$v0
li $v0,5
syscall 
add $s1,$0,,$v0
li $v0,5
syscall 
add $s2,$0,,$v0

add $s3,$s1,$s0
add $s3,$s3,$s2
li $v0 ,4
la $a0 ,output1
syscall
li $v0 ,1
add $a0,$0,$s3
syscall 
li $v0,4
la $a0,output2
syscall 
li $v0 ,1
addi $t1,$0,3
div $a0,$s3,$t1
syscall 
li $v0 ,10
syscall 
