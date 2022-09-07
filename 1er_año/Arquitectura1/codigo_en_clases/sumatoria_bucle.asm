	
data
num:	.word 10
.text
.globl main
main:	lw $t0 num
	move $t1, $t0 #copia
l:	addi $t0, $t0, -1
	beq $t0, $0, end
	add $t1, $t1, $t0
	j l
end	li $v0 10 # 10 is exit from C
	syscall