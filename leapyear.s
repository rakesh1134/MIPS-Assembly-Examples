main:
    li $t0, 2400  #year

    li $t1, 4
    li $t2, 100
    li $t3, 400
    
    rem $t4, $t0, $t1
    beqz $t4, step2
    b step5  
    
step2:
	rem $t4, $t0, $t2
    	beqz $t4, step3
    	b step4

step3:
	rem $t4, $t0, $t3
    	beqz $t4, step4
    	b step5
	    
step4:
	b label_is_leap
step5:
	b label_is_not_leap
	
label_is_leap:
	la   $a0, is_leap    
    	li   $v0, 4
    	syscall
	b end0

label_is_not_leap:
	la   $a0, is_not_leap    
    	li   $v0, 4
    	syscall
	b end0	
end0:
    li   $v0, 0         # return 0
    jr   $ra

.data
is_leap:
    .asciiz "Is a Leap Year\n"
is_not_leap:
    .asciiz "Is not a Leap Year\n"

#https://learn.microsoft.com/en-us/office/troubleshoot/excel/determine-a-leap-year