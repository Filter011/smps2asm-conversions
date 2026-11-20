S93:
	smpsHeaderStartSong 3
	smpsHeaderVoice     byte_C82
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01
	smpsHeaderSFXChannel cFM6, byte_C73,	$F4, $00

byte_C73:
	smpsSetvoice        $00
	dc.b	$B0, $07, smpsNoAttack, $AD

byte_C79:
	dc.b	$01
	smpsAlterVol        $01
	smpsLoop            $00, $2F, byte_C79
	smpsStop

byte_C82:
	dc.b	$30
	dc.b	$30,$30,$30,$30,$9E,$D8,$DC,$DC,$E,$A,4,5
	dc.b	8,8,8,8,$BF,$BF,$BF,$BF,$14,$3C,$14,$80