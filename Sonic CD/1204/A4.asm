SA4:	dw	byte_10DC
	db	1,1
	HD	80h,6,byte_10D4,0F4h,0
byte_10D4:
	db	FEV,0
	db	9Bh,4,80h,0A0h,6
	db	CMEND
byte_10DC:
	db	3Ch
	db	0,0,0,0,1Fh,1Fh,1Fh,1Fh,0,16h,0Fh,0Fh
	db	0,0,0,0,0Fh,0AFh,0FFh,0FFh,0,80h,0Ah,80h
SA5:	dw	byte_1104
	db	1,1
	HD	80h,6,byte_10FF,0,8
byte_10FF:
	db	FEV,0
	db	0C0h,0Bh
	db	CMEND
byte_1104:
	db	3Dh
	db	1,3,3,3,14h,0Eh,0Eh,0Dh,8,35h,2,91h
	db	0,50h,60h,56h,1Fh,1Fh,1Fh,1Fh,18h,82h,97h,80h