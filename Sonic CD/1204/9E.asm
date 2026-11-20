S9E:	dw	byte_F50
	db	1,2
	HD	80h,5,byte_F3A,10h,2
	HD	80h,6,byte_F4B,0,2
byte_F3A:
	db	FEV,0
	db	FVR,3,1,20h,4
byte_F41:
	db	81h,0Eh
	db	CMVADD,0Eh
	db	CMREPT,0,4
	dw	byte_F41
	db	CMEND
byte_F4B:
	db	FEV,1
	db	0B0h,13h
	db	CMEND
byte_F50:
	db	0F9h
	db	21h,30h,10h,32h,1Fh,1Fh,1Fh,1Fh,5,18h,9,2
	db	0Bh,1Fh,10h,5,1Fh,2Fh,4Fh,2Fh,0Eh,6,4,80h
	db	3Ch
	db	0Fh,0,0,0,1Fh,1Ah,18h,1Ch,17h,11h,1Ah,0Eh
	db	0,0Fh,14h,10h,1Fh,9Fh,9Fh,2Fh,7,80h,26h,80h