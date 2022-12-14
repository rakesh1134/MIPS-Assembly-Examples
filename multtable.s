main:
    li $t0, 9  #input
    li $t1, 0   #beg
    li $t2, 20 	#end 

loop:
    bgt $t1, $t2, end0
    
    mul $t3, $t0, $t1  	#calculate product
    addi $t1, $t1, 1	#increment counter
    
    move $a0, $t3    	#print product
    li   $v0, 1
    syscall
    
    li   $a0, '\n'      #print newline
    li   $v0, 11
    syscall
    
    b loop
    
end0:
  
    li   $v0, 0         # return 0
    jr   $ra