S9F:	dw	byte_F9C
	db	1,2
	HD	80h,5,byte_F92,0,3
	HD	80h,6,byte_F97,0,5
byte_F92:
	db	FEV,0
	db	0BAh,15h
	db	CMEND
byte_F97:
	db	FEV,1
	db	0BAh,10h
	db	CMEND
byte_F9C:
	db	7
	db	3,3,2,0,6Fh,4Fh,6Fh,3Fh,12h,11h,14h,0Eh
	db	1Ah,3,0Ah,0Dh,0FFh,0FFh,0FFh,0FFh,83h,86h,86h,80h
	db	3Ch
	db	0Fh,0,0,0,1Fh,1Ah,18h,1Ch,17h,11h,1Ah,0Eh
	db	0,0Fh,14h,10h,1Fh,9Fh,9Fh,2Fh,7,80h,16h,80h