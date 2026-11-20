SA2:	dw	byte_104D
	db	1,2
	HD	80h,5,byte_1034,10h,8
	HD	80h,6,byte_1047,0,0
byte_1034:
	db	FEV,0
	db	FVR,3,1,20h,4
	db	81h,6
byte_103D:
	db	81h,0Eh
	db	CMVADD,0Eh
	db	CMREPT,0,4
	dw	byte_103D
	db	CMEND
byte_1047:
	db	FEV,1
	db	0A6h,6,14h
	db	CMEND
byte_104D:
	db	0F9h
	db	21h,30h,10h,32h,1Ch,1Fh,1Fh,10h,5,18h,9,2
	db	0Bh,1Fh,10h,5,1Fh,2Fh,4Fh,2Fh,0Ch,6,4,80h
	db	0
	db	0,3,2,0,0D9h,0DFh,1Fh,1Fh,12h,11h,14h,0Fh
	db	0Ah,0,0Ah,0Dh,0FFh,0FFh,0FFh,0FFh,22h,7,27h,80h