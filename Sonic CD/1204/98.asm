S98:
	dw	byte_DAC
	db	1,1
	HD	80h,6,byte_D93,0,2

byte_D93:
	db	FEV,0
	db	80h,1
	db	FVR,3,1,5Dh,0Fh
	db	0B0h,0Ah
	db	0F1h
	db	FEV,1

byte_DA1:
	db	0BDh,2
	db	CMVADD,1
	db	CMTAB
	db	CMREPT,0,19h
	dw	byte_DA1
	db	CMEND

byte_DAC:
	db	20h
	db	36h,35h,30h,31h,0DFh,0DFh,9Fh,9Fh,7,6,9,6
	db	7,6,6,8,2Fh,1Fh,1Fh,0FFh,16h,30h,13h,80h
	db	20h
	db	31h,33h,30h,31h,9Fh,9Fh,9Fh,9Fh,7,6,9,6
	db	7,6,6,8,2Fh,1Fh,1Fh,0FFh,19h,23h,11h,80h