.data
msg1: .asciiz "\nEnter k:\n"
msg2: .asciiz "Enter n:\n"
msg3: .asciiz "Enter the array:\n"
msg4: .asciiz "\nNumber of pairs: "
myArray: .space 40

.text 
main: 
#show input message for user to enter k
li $v0, 4
la $a0, msg1
syscall

#put input k to register t8
li $v0, 5
syscall
move $t8, $v0

#show input message for user to enter n
li $v0, 4
la $a0, msg2
syscall

#put input n to register t9
li $v0, 5
syscall
move $t9, $v0
#multiply n with 4, because when we use loops later, we will increment by 1, whose byte is 4
Mul $t9, $t9, 4

li $t7, 0 #the register which will keep the number of pairs
li $t4, 0 #j, we will use for loop
li $t5, 0 #i, we will use for loop
li $t6, 0 #k, we will use for loop

#show input message for user to enter elemets of array, one by one
li $v0, 4
la $a0, msg3
syscall

#label that fills an array with inputs
takeInput:
#if the number of entered elements reach n, filling array finishes and finding pairs starts
beq $t6, $t9, divisibleSumPairs
#takes input
li $v0, 5
syscall
#fills array's current element
sb $v0, myArray($s0)
#increments array's index
addi $s0, $s0, 4
#increments the number of entered elements
addi $t6, $t6, 4
#loop
j takeInput

li $t6, 0 #j

#finding pair label
divisibleSumPairs:
#if $t5 reaches n, that means all of the elements are searched, the program exits 
beq $t5, $t9, exit
#else, we need to compare current element with all of the elements after it, for that we set $t4 as $t5 + 1
addi $t4, $t5, 4
#goes to inner loop
j innerLoop

#comparing current element with its successors
innerLoop:
#if $t4 reaches n, that means we looked every successor element, so we go back to the main loop
beq $t4, $t9, jumpBack
#else, we put array's two elements which we will compare, to $t3 and $t2
lbu $t3, myArray($t5)
lbu $t2, myArray($t4)
#we need their summation
add $t2, $t3, $t2
#we need to check whether k divides them without remainders, for that, we take quotient
div $t1, $t2, $t8
#if we multiply k with quotient, and the result is equal to the summation before, that means remainder was 0, and we found a pair
mul $t1, $t1, $t8
#we need to increment the count of pairs
beq $t1, $t2, incrementBack
#we need to look for the next element, so we increment $t4 by 1
addi $t4, $t4, 4
#loop
j innerLoop

#this label works when we finished the inner loop and go back to the main loop for the next element
jumpBack:
#we need the next element, so we increment $t5 by 1
addi $t5, $t5, 4
#calls the main loop label
j divisibleSumPairs

#this label works when we find a pair, and we need to increment its counr, and we need to go back to the main loop for the next element
incrementBack:
#increments pair's count by 1
addi $t7, $t7, 4
#increments inner loop to the next element
addi $t4, $t4, 4
#calls the inner loop label
j innerLoop

#this is the completion label
exit:
#show message
li $v0, 4
la $a0, msg4
syscall
#we need to divide the count by 4 because it's a byte
div $t7, $t7, 4
#print the count
move $a0, $t7
li $v0, 1
syscall
