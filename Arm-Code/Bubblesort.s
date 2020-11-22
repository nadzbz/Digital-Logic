	AREA ARM, CODE, READONLY
	
	CODE32
	PRESERVE8
	
	EXPORT __sortc
	; r0 = &arr[0]
	; r1 = length 
	
__sortc
	stmfd sp!, {r2-r9, lr}
	
	mov r4, r1					; inner loop counter
	mov r3, r4
	sub r1, r1, #1
	mov r9, r1					; outer loop counter						
		
outer_loop
	mov r5, r0
	mov r4, r3

inner_loop
	ldr r6, [r5], #4
	ldr r7, [r5]
	cmp r7, r6
	
	; swap without swp
	strls r6, [r5]
	strls r7, [r5, #-4]	
	
	subs r4, r4, #1
	bne inner_loop
	
	subs r9, r9, #1	 
	bne outer_loop	
	
	ldmfd sp!, {r2-r9, pc}^
	
	END
	
	
	
