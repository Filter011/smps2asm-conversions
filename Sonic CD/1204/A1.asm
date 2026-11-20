SA1:	dw	byte_100B
	db	1,1
	HD	80h,6,byte_1000,10h,0Ah
byte_1000:
	db	FEV,0
	db	0C0h,3,80h,2
	db	0D0h,3,80h,2
	db	CMEND
byte_100B:
	db	0F9h
	db	21h,30h,10h,32h,1Fh,1Fh,1Fh,1Fh,5,18h,9,2
	db	0Bh,1Fh,10h,5,1Fh,2Fh,4Fh,2Fh,0Ch,6,4,80h