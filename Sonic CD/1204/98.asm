S98:
	smpsHeaderStartSong 3
	smpsHeaderVoice     byte_DAC
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, byte_D93,	$00, $02

byte_D93:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $03, $01, $5D, $0F
	dc.b	$B0, $0A
	smpsModOn
	smpsSetvoice        $01

byte_DA1:
	dc.b	$BD, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsLoop            $00, $19, byte_DA1
	smpsStop

byte_DAC:
	dc.b	$20
	dc.b	$36,$35,$30,$31,$DF,$DF,$9F,$9F,7,6,9,6
	dc.b	7,6,6,8,$2F,$1F,$1F,$FF,$16,$30,$13,$80
	dc.b	$20
	dc.b	$31,$33,$30,$31,$9F,$9F,$9F,$9F,7,6,9,6
	dc.b	7,6,6,8,$2F,$1F,$1F,$FF,$19,$23,$11,$80