S9D:	dw	byte_F11
	db	1,2
	HD	80h,5,byte_F03,27h,3
	HD	80h,6,byte_F05,27h,0
byte_F03:
	db	80h,4
byte_F05:
	db	FEV,0
byte_F07:
	db	0B4h,5
	db	CMVADD,4
	db	CMREPT,0,8
	dw	byte_F07
	db	CMEND
byte_F11:
	db	0F4h
	db	6,4,0Fh,0Eh,1Fh,1Fh,1Fh,1Fh,0,0,0Bh,0Bh
	db	0,0,5,8,0Fh,0Fh,0FFh,0FFh,0Ch,85h,0,80h