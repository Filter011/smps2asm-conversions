S99:	dw	byte_DED
	db	1,1
	HD	80h,6,byte_DE8,0,0
byte_DE8:
	db	FEV,0
	db	0B5h,2
	db	CMEND
byte_DED:
	db	7
	db	0Ah,0Ah,0Ah,0Ah,1Fh,1Fh,1Fh,1Fh,0,0,0,0
	db	0,0,0,0,0Fh,0Fh,0Fh,0Fh,88h,88h,88h,88h