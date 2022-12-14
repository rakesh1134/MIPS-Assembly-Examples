main:
    li $t0, 10
    li $t1, 1    #counter
    li $t2, 1    #result

loop:
    bgt $t1, $t0, end0
    
    mul $t2, $t2, $t1
    addi $t1, $t1, 1
    b loop
    
end0:
    move $a0, $t2       # printf("%d", sum);
    li   $v0, 1
    syscall
    

    li   $v0, 0         # return 0
    jr   $ra