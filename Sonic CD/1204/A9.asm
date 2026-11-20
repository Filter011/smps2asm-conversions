SA9:	dw	byte_11FD
	db	1,2
	HD	80h,1,byte_11BE,0,9
	HD	80h,2,byte_11D7,5,6
byte_11BE:
	db	FEV,0
	db	FVR,1,1,0Ah,7
	db	0AFh,60h
	db	CMTAB
	db	TIMER_ADD,0C5h,11h
byte_11CB:
	db	1
	db	CMVADD,1,CMTAB
	db	CMREPT,0,14h
	dw	byte_11CB
	db	SET_TFLG,0
	db	CMEND
byte_11D7:
	db	FEV,1
	db	0C8h,7,0C9h,0CAh,0CBh,0CCh,0CBh,0CAh,0C9h
	db	TIMER_ADD,0D9h,11h
	db	0C8h
	db	7
	db	CMVADD
	db	2
	db	0C9h
	db	CMVADD
	db	2
	db	0CAh
	db	CMVADD
	db	2
	db	0CBh
	db	CMVADD
	db	2
	db	0CCh
	db	CMVADD
	db	2
	db	0CBh
	db	CMVADD
	db	2
	db	0CAh
	db	CMVADD
	db	2
	db	0C9h
	db	CMEND
byte_11FD:
	db	8
	db	0Ah,70h,30h,0,0Bh,0Ah,4Fh,3Fh,3,3,3,3
	db	0,0,0,1,0Fh,0Fh,0Fh,0Fh,21h,2Dh,11h,80h
	db	24h
	db	4,31h,11h,52h,1Ah,9Ch,95h,98h,4,6,0Eh,18h
	db	1,4,0,3,4Fh,8Fh,2Fh,1Fh,19h,8Ah,16h,8Ah