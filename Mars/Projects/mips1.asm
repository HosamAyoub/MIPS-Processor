.data
label: .asciiz "My name is Hosam"
arr: .word 5 6 7 8

.text
main:
addi $s0, $s0, 5
li $s1, 100
mul $s1, $s1, $s0