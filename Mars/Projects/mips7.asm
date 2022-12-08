.data
arr: .word 1 1 2 3 5 8 13 21 34 55
nl: .asciiz "\n"

.text
main:
la $t0, arr
L: beq $s0, 10, Exit
li $v0, 1
la $a0, ($s0)
syscall
li $v0, 11
li $a0, ':'
syscall
li $v0, 1
lw $a0, 0($t0)
syscall
li $v0, 4
la $a0, nl
syscall
addi $s0, $s0, 1
addi $t0, $t0, 4
j L
Exit: li $v0, 10
syscall
