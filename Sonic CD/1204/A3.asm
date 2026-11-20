SA3:	dw	byte_10B1
	db	1,3
	HD	80h,2,byte_1095,10h,5
	HD	80h,5,byte_109C,10h,5
	HD	80h,6,byte_10A0,0,5
byte_1095:
	db	LRPAN,40h
	db	80h,2
	db	CMJUMP
	dw	byte_10A0
byte_109C:
	db	LRPAN,80h
	db	80h,1
byte_10A0:
	db	FEV,0
	db	FVR,3,1,20h,4
byte_10A7:
	db	81h,18h
	db	CMVADD,0Ah
	db	CMREPT,0,6
	dw	byte_10A7
	db	CMEND
byte_10B1:
	db	0F9h
	db	21h,30h,10h,32h,1Fh,1Fh,1Fh,1Fh,5,18h,9,2
	db	0Bh,1Fh,10h,5,1Fh,2Fh,4Fh,2Fh,0Eh,7,4,80h