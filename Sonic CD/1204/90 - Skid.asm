S90:
	smpsHeaderStartSong 3
	smpsHeaderVoice     TIMB90
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02
	smpsHeaderSFXChannel cFM6, TAB900,	$F4, $0C
	smpsHeaderSFXChannel cFM5, byte_B73,	$F4, $0C

TAB900:
	smpsSetvoice        $00
	dc.b	nBb3, $01, nRst, nBb3, nRst, $03

byte_B69:
	dc.b	nBb3, $01, nRst, $01
	smpsLoop            $00, $0B, byte_B69
	smpsStop

byte_B73:
	smpsSetvoice        $00
	dc.b	nRst, $01, nAb3, nRst, nAb3, nRst, $03

byte_B7C:
	dc.b	nAb3, $01, nRst, $01
	smpsLoop            $00, $0B, byte_B7C
	smpsStop

TIMB90:
;	Voice $00
;	$07
;	$08, $08, $08, $08, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$88, $88, $88, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $88, $88, $88