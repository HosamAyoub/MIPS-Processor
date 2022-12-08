.data
   arr: .word 1, 2, 3, 4, 5
        .word 16, 17, 18, 19, 20
        .word 11, 22, 33, 44, 55
        .word 26, 27, 28, 29, 30
        .word 99, 88, 77, 66, 55
        
   size: .word 5
   .eqv data_size 4
   
.text
   main:
     la $a0, arr
     lw $a1, size
     jal sum_of_diagonal
     li $a0, 0
     add $a0, $a0, $v0
     li $v0, 1
     syscall
     li $v0, 10
     syscall
     
     
   sum_of_diagonal:
     li $v0, 0
     li $t0, 0
     Loop:
       mul $t1, $t0, $a1
       add $t1, $t1, $t0
       mul $t1, $t1, data_size
       add $t1, $t1, $a0
       lw $t2, ($t1)
       add $v0, $v0, $t2
       addi $t0, $t0, 1
       blt $t0, $a1, Loop
       jr $ra