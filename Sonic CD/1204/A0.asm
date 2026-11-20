SA0:	dw	byte_FDD
	db	1,1
	HD	80h,6,byte_FD8,0,0
byte_FD8:
	db	FEV,0
	db	97h,15h
	db	CMEND
byte_FDD:
	db	3Ch
	db	5,0,0,0,1Fh,1Fh,1Fh,1Fh,0,0Fh,15h,11h
	db	0,0Ch,0,0Ah,0Fh,0EFh,0FFh,0EFh,5,80h,0,80h