SA6:	dw	byte_113E
	db	1,1
	HD	80h,4,byte_1127,0,0Dh
byte_1127:
	db	FEV,0
	db	0D0h,2
	db	CMTAB,1
	db	TIMER_ADD,2Bh,11h
byte_1130:
	db	CMTAB,1
	db	CMVADD,1
	db	CMREPT,0,22h
	dw	byte_1130
	db	80h,1
	db	SET_TFLG,0
	db	CMEND
byte_113E:
	db	38h
	db	0Fh,0Fh,0Fh,0Fh,1Fh,1Fh,1Fh,0Eh,0,0,0,0
	db	0,0,0,0,0Fh,0Fh,0Fh,1Fh,0,0,0,80h