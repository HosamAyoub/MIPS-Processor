.data
input: .asciiz "Enter integer number = "

.text
main:
li $v0, 4
la $a0, input
syscall
li $v0, 5
syscall
addi $t2, $v0, 0
addi $a0, $t2, 0
jal fibbonachi
addi $a0, $v0, 0
li $v0, 1
syscall
li $v0, 10
syscall

fibbonachi:
beqz $a0, end1
beq $a0, 1, end2
addi $sp $sp, -4
sw $ra, 0($sp)
addi $a0, $a0, -1
addi $sp, $sp, -4
sw $a0, 0($sp)
jal fibbonachi
lw $a0, 0($sp)
addi $sp, $sp, 4
addi $a0, $a0, -1
addi $sp, $sp, -4
sw $v0, 0($sp)
jal fibbonachi
lw $t0, 0($sp)
addi $sp $sp, 4
add $v0, $v0, $t0
lw $ra, 0($sp)
addi $sp, $sp, 4
jr $ra
end1: add $v0, $0, $0
jr $ra
end2: addi, $v0, $0, 1
jr $ra
