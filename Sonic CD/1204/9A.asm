S9A:	dw	byte_E36
	db	1,3
	HD	80h,2,byte_E2C,0F5h,8
	HD	80h,5,byte_E25,0,0
	HD	80h,6,byte_E1C,0,0
byte_E1C:
	db	FEV,0
	db	8Ah,8,80h,2,8Ah,8
	db	CMEND
byte_E25:
	db	FEV,1
	db	80h,12h,0C6h,55h
	db	CMEND
byte_E2C:
	db	FEV,2
	db	80h,2,0C2h,5,4,5,4
	db	CMEND
byte_E36:
	db	3Bh
	db	3,2,3,6,18h,1Ah,1Ah,96h,17h,0Eh,0Ah,10h
	db	0,0,0,0,0FFh,0FFh,0FFh,0FFh,0,28h,39h,80h
	db	4
	db	37h,72h,77h,49h,1Fh,1Fh,1Fh,1Fh,7,0Ah,7,0Dh
	db	0,0Bh,0,0Bh,1Fh,0Fh,1Fh,0Fh,23h,80h,23h,80h
	db	3Ch
	db	0Fh,0,0,0,1Fh,1Ah,18h,1Ch,17h,11h,1Ah,0Eh
	db	0,0Fh,14h,10h,1Fh,9Fh,9Fh,2Fh,7,80h,26h,8Ch