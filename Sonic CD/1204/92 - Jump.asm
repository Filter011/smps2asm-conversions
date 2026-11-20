S92:
	smpsHeaderStartSong 3
	smpsHeaderVoice     byte_C50
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, byte_C44,	$EA, $0E

byte_C44:
	smpsSetvoice        $00
	dc.b	$A4, $05
	smpsModSet          $02, $01, $33, $FF
	dc.b	$AB, $15
	smpsStop

byte_C50:
	dc.b	$47
	dc.b	$A,$A,$A,$A,$1F,$1F,$1F,$1F,0,0,0,0
	dc.b	0,0,0,0,$FF,$FF,$FF,$FF,$81,$81,$81,$81