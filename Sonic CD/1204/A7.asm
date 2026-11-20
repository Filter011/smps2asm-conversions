SA7:	dw	byte_1167
	db	1,1
	HD	80h,6,byte_1161,0,3
byte_1161:
	db	FEV,0
	db	0BAh,6,15h
	db	CMEND
byte_1167:
	db	2
	db	3,0,0,0,0Fh,0Fh,0Fh,12h,12h,11h,14h,0Fh
	db	0FAh,0F3h,0FAh,0FDh,0FFh,0FFh,0FFh,0FFh,5,19h,5,83h
SA8:	dw	byte_1195
	db	1,1
	HD	80h,6,byte_118A,0,5
byte_118A:
	db	FEV,0
	db	LRPAN,80h
	db	0C1h,5
	db	0C4h,5
	db	0C9h,1Bh
	db	CMEND
byte_1195:
	db	4
	db	37h,72h,77h,49h,1Fh,1Fh,1Fh,1Fh,7,0Ah,7,0Dh
	db	0,0Bh,0,0Bh,1Fh,0Fh,1Fh,0Fh,23h,80h,23h,80h