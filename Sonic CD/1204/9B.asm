S9B:	dw	byte_EA2
	db	1,1
	HD	80h,6,byte_E8B,0,5
byte_E8B:
	db	FEV,0
	db	80h,1
	db	FVR,3,1,9,0FFh
	db	0CAh,25h
	db	0F1h
byte_E97:
	db	CMTAB
	db	CMVADD,1
	db	0D1h,2
	db	CMREPT,0,2Ah
	dw	byte_E97
	db	CMEND
byte_EA2:
	db	3Ch
	db	0,44h,2,2,1Fh,1Fh,1Fh,15h,0,1Fh,0,0
	db	0,0,0,0,0Fh,0Fh,0Fh,0Fh,0Dh,80h,28h,80h