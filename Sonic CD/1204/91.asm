S91:
	smpsHeaderStartSong 3
	smpsHeaderVoice     TIMB91
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, byte_BAF,	$00, $0A
	smpsHeaderSFXChannel cFM5, byte_BC9,	$00, $00

byte_BAF:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $20, $08
	dc.b	nRst, $0A

byte_BB8:
	dc.b	nG0, $0F
	smpsLoop            $00, $03, byte_BB8

byte_BBF:
	dc.b	nG0, $0A
	smpsAlterVol        $05
	smpsLoop            $00, $06, byte_BBF
	smpsStop

byte_BC9:
	smpsSetvoice        $01
	smpsModSet          $01, $01, $C5, $1A
	dc.b	nFb6, $07
	smpsAlterPitch      $0C
	smpsAlterVol        $09
	smpsSetvoice        $02
	smpsModSet          $03, $01, $09, $FF
	dc.b	nDb6, $25
	smpsModSet          $00, $01, $00, $00

byte_BE4:
	dc.b	smpsNoAttack
	smpsAlterVol        $01
	dc.b	nD6, $02
	smpsLoop            $00, $2A, byte_BE4
	smpsStop

TIMB91:
	dc.b	$FA
	dc.b	$21,$30,$10,$32,$1F,$1F,$1F,$1F,5,$18,9,2
	dc.b	6,$0F,6,2,$1F,$2F,$4F,$2F,$0F,$1A,$0E,$80

	dc.b	$FD
	dc.b	9,3,0,0,$1F,$1F,$1F,$1F,$10,$0C,$0C,$0C
	dc.b	$0B,$1F,$10,5,$1F,$2F,$4F,$2F,9,$80,$8E,$88

	dc.b	$3C
	dc.b	0,$44,2,2,$1F,$1F,$1F,$15,0,$1F,0,0
	dc.b	0,0,0,0,$0F,$0F,$0F,$0F,$0D,$80,$28,$80