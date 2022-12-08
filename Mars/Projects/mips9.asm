.text
main:
#addi $a0, $a0, 3
#addi $a1, $a1, 2
#addi $a2, $a2, 5
#addi $a3, $a3, 10
#jal add4
addi $a0, $0, 5
jal fact
la $a0, ($v0)
li $v0, 1
syscall
li $v0, 10
syscall

add2:
add $v0, $a0, $a1
jr $ra

add4:
addi $sp, $sp, -4
sw $ra, ($sp)
jal add2
addi $sp, $sp, -4
sw $v0, ($sp)
addi $a0, $a2, 0
addi $a1, $a3, 0
jal add2
addi $a1, $v0, 0
lw $a0, ($sp)
addi $sp, $sp, 4
jal add2
lw $ra, ($sp)
addi $sp, $sp, 4
jr $ra

fact:
beq $a0, 1, Finish
addi $sp, $sp, -4
sw $ra, ($sp)
addi $sp, $sp, -4
sw $a0, ($sp)
addi $a0, $a0, -1
jal fact
lw $t0, ($sp)
addi $sp, $sp, 4
mul $v0, $v0, $t0
lw $ra, ($sp)
addi $sp, $sp, 4
jr $ra
Finish: addi $v0, $v0, 1
jr $ra