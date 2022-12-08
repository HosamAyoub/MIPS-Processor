.data
arr: .word 1 2 3 4 5 6

.text
main:
la $t8, arr
addi $a1, $a1, 1
addi $a2, $a2, 4
sll $t1, $a1, 2
jal average
li $v0, 10
syscall


average:
L:slt $t0, $a1,$a2
bne $t0, 0, End
add $t3, $t8, $t1
lw $t4, 0($t3)
addi $a1, $a1, 1
add $t5, $t5, $t4
addi $t4, $t4, 4
j L
End: addi $t7, $t7, 4
div $t6, $t5, $t7
li $v0, 1
la $a0, ($t6)
syscall
jr $ra