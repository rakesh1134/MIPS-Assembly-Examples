main:
    li $t0, 2  #input
    li $t1, 2   #beg
    
    div $t2, $t0,$t1	#end,  input/2

loop:
    bgt $t1, $t2, isprime0
    
    rem $t3, $t0, $t1
    beqz $t3, isnotprime0
    addi $t1, $t1, 1	#increment counter
    
    b loop
	
isnotprime0:
	la   $a0, is_not_prime    
    	li   $v0, 4
    	syscall
	b end0
	
isprime0:
	la   $a0, is_prime    
    	li   $v0, 4
    	syscall
	b end0

	
end0:
    li   $v0, 0         # return 0
    jr   $ra

.data
is_prime:
    .asciiz "Is a prime number\n"
is_not_prime:
    .asciiz "Is not a prime number\n"
