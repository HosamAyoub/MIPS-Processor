.text
main:
li $v0, 4
la $a0, arr
syscall
li $v0, 10
syscall

.data
label: .asciiz "My name is Hosam"
arr: .word 5 6 7 8
