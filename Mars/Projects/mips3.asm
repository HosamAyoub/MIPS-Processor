.text
main:
li $v0, 8
la $a0, name
li $a1, 8
syscall
li $v0, 10
syscall

.data
name: .space 20