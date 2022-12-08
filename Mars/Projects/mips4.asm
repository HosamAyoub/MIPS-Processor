.data
msg: .asciiz "Enter 3 numbers\n"
output1: .asciiz "The sum = "
output2: .asciiz "\nThe average = "

.text
main:
li $v0, 4
la $a0, msg
syscall
li $v0, 5
syscall
add $s0, $0, $v0
li $v0, 5
syscall
add $s0, $s0, $v0
li $v0, 5
syscall
add $s0, $s0, $v0
li $v0, 4
la $a0, output1
syscall
li $v0, 1
add $a0, $0, $s0
syscall
li $v0, 4
la $a0, output2
syscall
addi $t0, $0, 3
div $s0, $s0, $t0
li $v0, 1
add $a0, $0, $s0
syscall
li $v0, 10
syscall