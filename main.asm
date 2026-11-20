	cpu	68000

ZeroOffsetOptimization = 0

	include	"MacroSetup.asm"
	include	"Equates.asm"
	include	"Macros.asm"
	include	"WorkRAM.asm"

SonicDriverVer = 3
	include	"_smps2asm_inc.asm"

	if 0
vectors:
	dc.l	0
	dc.l	init
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	0
	dc.l	hint
	dc.l	0
	dc.l	vint
	align	$100
	dc.b	"SEGA MEGA DRIVE "
	dc.b	"(C)SEGA 1988.JAN"
	rept 2
	dc.b	"SMPS TEST ROM   "
	dc.b	"                "
	dc.b	"                "
	endr
	dc.b	"GM 00000000-00"
	dc.w	0
	dc.b	"J               "
	dc.l	0
	dc.l	$3FFFF
	dc.l	$FF0000
	dc.l	$FFFFFF
	dc.b	"    "
	dc.b	"    "
	dc.b	"    "
	dc.b	"                                                    "
	dc.b	"J               "

init:

gameloop:
	bra.s	gameloop

vint:
	rte

hint:
	rte

	include	"s1.sounddriver.asm"
	endif

	phase	0
	include	"Sonic CD/1204/97.asm"
	dephase