.data
msg1: .asciiz "Input the first integer: "
msg2: .asciiz "Input the second integer: "
msg3: .asciiz "Error, please enter postive integer \n"
msg4: .asciiz "The result = "
c: .word 32

.text
main:
li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
addi $t0, $v0, 0 
blez $t0, Exit
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
add $t1, $v0, 0
blez $t1, Exit
loop:beq $t1, $t3, print
add $s0, $s0, $t0
addi $t3, $t3, 1
j loop
print: li $v0, 4
la $a0, msg4
syscall
li $v0, 1
add $a0, $s0, 0 
la $s1, c
sw $s0, 0($s1)
syscall
li $v0, 10
syscall
li $v0, 10
syscall
Exit: li $v0, 4
la $a0, msg3
syscall
li $v0, 10
syscall