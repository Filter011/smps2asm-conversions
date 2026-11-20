S9C:	dw	byte_EDA
	db	1,1
	HD	80h,6,byte_EC5,0,5
byte_EC5:
	db	FEV,0
	db	80h,1
	db	FVR,3,1,6,0FFh
	db	0CAh,39h
	db	0F1h
	db	CMVADD,2
byte_ED3:
	db	CMTAB
	db	0D1h,2
	db	CMJUMP
	dw	byte_ED3
	db	CMEND
byte_EDA:
	db	3Ch
	db	0,44h,2,2,1Fh,1Fh,1Fh,15h,0,1Fh,0,0
	db	0,0,0,0,0Fh,0Fh,0Fh,0Fh,0Dh,80h,28h,80h