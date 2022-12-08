.data
msg1: .asciiz "Enter first postive number = "
msg2: .asciiz "Enter second positive number = "
msg3: .asciiz "The product of two numbers = "
msg4: .asciiz "Please Enter postive number"
c: .word 32

.text
main:
li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
addi $s0, $v0, 0
blez $s0, End
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
addi $s1, $v0, 0
blez $s1, End
L: beq $s1, $s2, print
add $s3, $s3, $s0
addi $s2, $s2, 1
j L
print: li $v0, 4
la $a0, msg3
syscall
li $v0, 1
addi $a0, $s3, 0
syscall
la $s4, c
sw $s3, 0($s4)
li $v0, 10
syscall

End: li $v0, 4
la $a0, msg4
syscall
li $v0, 10
syscall