; VRAM Location Equates
plane_w:	equ	$A000
plane_a:	equ	$C000
plane_b:	equ	$E000
sprdat_vram:	equ	$F800
hscroll_vram:	equ	$FC00

; Z80 Equates
z80ram:		equ	$A00000
z80busreq:	equ	$A11100
z80reset:	equ	$A11200

version:	equ	$A10001
port_1:		equ	$A10003		;port A
port_2:		equ	$A10005		;port B
port_3:		equ	$A10007		;port C
cont_1:		equ	$A10009		;cont A
cont_2:		equ	$A1000b		;cont B  === PCM-IPT conect enable ===
cont_3:		equ	$A1000D		;cont C

; Tile Equates
tile_size:	equ	8*8/2

; VDP Equates
vdp_dat:	equ	$C00000		;read & write address of vram data
vdp_cmd:	equ	$C00004		;address set,vdp reg.
v_read:		equ	$C00008		;read h,v counter

; PSG Equates
psg68k:		equ	$C00011