another_part_of_me_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     another_part_of_me_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       another_part_of_me_DAC
	smpsHeaderFM        another_part_of_me_FM1,	$F4, $10
	smpsHeaderFM        another_part_of_me_FM2,	$F4, $06
	smpsHeaderFM        another_part_of_me_FM3,	$DC, $14
	smpsHeaderFM        another_part_of_me_FM4,	$DC, $14
	smpsHeaderFM        another_part_of_me_FM5,	$F4, $10
	smpsHeaderPSG       another_part_of_me_PSG1,	$D0, $05, $00, $00
	smpsHeaderPSG       another_part_of_me_PSG2,	$D0, $05, $00, $00
	smpsHeaderPSG       another_part_of_me_PSG3,	$00, $03, $00, fTone_04

; FM1 Data
another_part_of_me_FM1:
	smpsSetvoice        $08
	smpsAlterVol        $04
	dc.b	nA5, $2A
	smpsAlterVol        $FA
	smpsSetvoice        $05
	dc.b	nF7, $06
	smpsAlterVol        $02
	dc.b	nRst, $60, nRst

another_part_of_me_Jump03:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsAlterPitch      $E8
	smpsAlterVol        $04
	smpsCall            another_part_of_me_Call03
	smpsAlterPitch      $18
	smpsAlterVol        $FC
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsCall            another_part_of_me_Call04
	smpsCall            another_part_of_me_Call04
	dc.b	smpsNoAttack, $0C, nRst, $06, nA5, $03, nRst
	smpsSetvoice        $00
	dc.b	nBb5, $06, nBb5, $03
	smpsModSet          $1E, $01, $FF, $FF
	dc.b	$12, nRst, $0F
	smpsModOff
	dc.b	nG5, $03, nRst, $03, nA5, $06, $03, $06, smpsNoAttack, nG5, $03, smpsNoAttack
	smpsModSet          $08, $01, $08, $04
	dc.b	nF5, $12, nRst, $06
	smpsModOff
	dc.b	nD5, $03, nRst, $03, nBb5, $06, nBb5, $03
	smpsModSet          $1E, $01, $FF, $FF
	dc.b	$12, nRst, $09
	smpsModOff
	dc.b	nBb5, $03, smpsNoAttack, nA5, smpsNoAttack, nG5, nA5, $06, smpsNoAttack, nG5, $03, smpsNoAttack
	dc.b	nF5, $1E, nRst, $06, nF5, $03, nRst, nG5, $06, nG5, $03
	smpsModSet          $16, $01, $FF, $FF
	dc.b	$0F, nRst, $03
	smpsModOff
	dc.b	nG5, nRst, nG5, nRst, nG5, nRst, nF5, $09
	smpsModSet          $08, $01, $08, $04
	dc.b	$1E, nRst, $06
	smpsModOff
	dc.b	nF5, $03, nRst, nG5, $06, nG5, $03
	smpsModSet          $16, $01, $FF, $FF
	dc.b	$0F, nRst, $03
	smpsModOff
	dc.b	nG5, nRst, nA5, nRst, nBb5
	smpsModSet          $12, $01, $08, $04
	dc.b	nA5, $36, nRst, $06
	smpsCall            another_part_of_me_Call00
	smpsModSet          $12, $01, $08, $04
	dc.b	nD5, $30
	smpsModOff
	dc.b	nRst, nRst, nRst
	smpsJump            another_part_of_me_Jump03

another_part_of_me_Call00:
	smpsModOff
	dc.b	nCs5, $01, smpsNoAttack, nD5, $02, nRst, $03, nF5, $06, nA5, $06, nG5
	dc.b	$06, nF5, $06, nEb5, $01, smpsNoAttack, nE5, $05, nC5, $06
	smpsReturn

another_part_of_me_Call03:
	dc.b	nRst, $06, nA4, $03, nRst, nB4, $0C, nRst, $03, nA4, nRst, nB4
	dc.b	nRst, $12, nA4, $03, nRst, nB4, $0C, nRst, $03, nA4, nRst, nB4
	dc.b	nRst, $12, nG4, $03, nRst, nA4, $0C, nRst, $03, nG4, nRst, nA4
	dc.b	nRst, $12, nBb4, $03, nRst, nBb4, $07, nRst, $02, nCs5, $03
	smpsReturn

another_part_of_me_Call04:
	dc.b	nRst, $03
	smpsModSet          $00, $01, $0C, $FF
	dc.b	nAb5, $02, smpsNoAttack
	smpsModOff
	dc.b	nA5, $03, nRst, $01, nG5, $03, nRst, $03, nF5, $03
	smpsModSet          $01, $01, $04, $FF
	dc.b	nAb5, $06, smpsNoAttack
	smpsModSet          $1A, $01, $08, $04
	dc.b	nA5, $15, nRst, $06
	smpsModSet          $00, $01, $0C, $FF
	dc.b	nAb5, $02, smpsNoAttack
	smpsModOff
	dc.b	nA5, $02, nRst, $02, nG5, $03, nRst, $03, nF5, $03
	smpsModSet          $01, $01, $04, $FF
	dc.b	nAb5, $06, smpsNoAttack
	smpsModSet          $1A, $01, $08, $04
	dc.b	nA5, $15, nRst, $06
	smpsModSet          $00, $01, $0C, $FF
	dc.b	nAb5, $02, smpsNoAttack
	smpsModOff
	dc.b	nA5, $02, nRst, $02, nG5, $03, nRst, $03, nF5, $03
	smpsModSet          $01, $01, $04, $FF
	dc.b	nFs5, $06, smpsNoAttack
	smpsModSet          $1A, $01, $08, $04
	dc.b	nG5, $15, nRst, $06
	smpsModSet          $00, $01, $0C, $FF
	dc.b	nE5, $02, smpsNoAttack
	smpsModOff
	dc.b	nF5, $03, nRst, $01, nF5, $03, nF5, $05, nRst, $01
	smpsModSet          $01, $01, $04, $FF
	dc.b	nAb5, $06, smpsNoAttack
	smpsModSet          $1A, $01, $08, $04
	dc.b	nA5, $18
	smpsReturn

; FM2 Data
another_part_of_me_FM2:
	smpsSetvoice        $09
	dc.b	nD3, $2A
	smpsAlterVol        $0E
	smpsSetvoice        $00
	dc.b	nA5, $06
	smpsAlterVol        $F2
	smpsSetvoice        $01

another_part_of_me_Loop07:
	smpsCall            another_part_of_me_Call02
	dc.b	nE3, nRst
	smpsLoop            $00, $03, another_part_of_me_Loop07
	smpsCall            another_part_of_me_Call02
	dc.b	nA3, nRst

another_part_of_me_Loop08:
	smpsSetvoice        $01
	dc.b	nBb3, $03, nBb3, nRst, $0C, nBb3, $03, nBb3, nRst, $0F, nBb3, $03
	dc.b	nC4, nC4, nD4, nD4, $03, nRst, $0F, nD3, $03, nD3, $09, $03
	dc.b	nF3, $06, nD3
	smpsLoop            $00, $02, another_part_of_me_Loop08
	dc.b	nEb3, $03, nEb3, nRst, $0C, nEb4, $03, nEb3, nRst, $0F, nEb3, $03
	dc.b	nF3, nCs3, nD4, nD4, nRst, $0F, nD3, $03, nD3, $09, $03, nF3
	dc.b	$06, nD3, nE3, $03, nE3, nRst, $0C, nE4, $03, nE3, nRst, $09
	dc.b	nE3, $03, nG3, nRst, nA3, nRst, nRst, $06, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nRst, $21, nC4, $03, $06
	smpsJump            another_part_of_me_Loop07

another_part_of_me_Call02:
	dc.b	nD4, $03, nD4, nRst, $0C, nD3, $03, nD3, nRst, $0F, nG3, $03
	dc.b	nA3, nC4, nD4, nD4, nRst, $0C, nD3, $03, nD3, nRst, $0F, nF3
	dc.b	$03, nG3, nBb3, nC4, nC4, nRst, $0C, nC3, $03, nC3, nRst, $0F
	dc.b	nC3, $03, nD3, nEb3, nE3, nE3, nRst, $0F, nA3, $06, nA3, $03
	dc.b	nG3, nRst, nF3, nRst
	smpsReturn

; FM3 Data
another_part_of_me_FM3:
	smpsSetvoice        $08
	smpsPan             panLeft, $00
	dc.b	nG7, $2A
	smpsAlterPitch      $30
	smpsAlterVol        $FA
	smpsSetvoice        $00
	dc.b	nC5, $06
	smpsAlterPitch      $D0
	smpsAlterVol        $06

another_part_of_me_Jump02:
	smpsSetvoice        $02

another_part_of_me_Loop05:
	smpsPan             panCenter, $00
	smpsCall            another_part_of_me_Call01
	smpsLoop            $00, $02, another_part_of_me_Loop05
	smpsPan             panLeft, $00

another_part_of_me_Loop06:
	smpsCall            another_part_of_me_Call01
	smpsLoop            $00, $02, another_part_of_me_Loop06
	smpsAlterVol        $0E
	smpsModSet          $08, $01, $06, $04
	smpsSetvoice        $04
	smpsAlterPitch      $18
	smpsPan             panLeft, $00
	dc.b	nBb4, $30, nD5, nBb4, nD5, $03
	smpsSetvoice        $06
	smpsAlterVol        $EC
	dc.b	nD6, nRst, nD6, nRst, nD6, nRst
	smpsModSet          $0E, $01, $F4, $FF
	dc.b	nD6, $09, smpsNoAttack
	smpsModSet          $08, $01, $06, $04
	dc.b	nA5, $12
	smpsAlterVol        $14
	smpsSetvoice        $04
	dc.b	nEb5, $30, nD5, nD5
	smpsAlterPitch      $E8
	smpsSetvoice        $00
	smpsAlterVol        $EE
	smpsModOff
	smpsNoteFill        $07
	dc.b	nRst, $06, nE7, nE7, nE7, nE7, nE7, nE7, nE7
	smpsNoteFill        $00
	dc.b	nF7, nRst, $2A
	smpsAlterVol        $12
	smpsAlterVol        $F2
	smpsJump            another_part_of_me_Jump02

another_part_of_me_Call01:
	dc.b	nRst, $06, nF5, $03, nRst, nG5, $0C, nRst, $03, nF5, nRst, nG5
	dc.b	nRst, $12, nF5, $03, nRst, nG5, $0C, nRst, $03, nF5, nRst, nG5
	dc.b	nRst, $12, nEb5, $03, nRst, nF5, $0C, nRst, $03, nEb5, nRst, nF5
	dc.b	nRst, $12, nE5, $03, nRst, nE5, $07, nRst, $02, nA5, $03, nRst
	dc.b	nA5, nRst, nA5, nRst, $0C
	smpsReturn

; FM4 Data
another_part_of_me_FM4:
	smpsSetvoice        $08
	smpsPan             panRight, $00
	dc.b	nD7, $2A
	smpsAlterPitch      $24
	smpsAlterVol        $FA
	smpsSetvoice        $00
	dc.b	nG5, $06
	smpsAlterPitch      $DC
	smpsAlterVol        $06

another_part_of_me_Jump01:
	smpsSetvoice        $02
	smpsPan             panRight, $00

another_part_of_me_Loop04:
	dc.b	nRst, $06, nC5, $03, nRst, nD5, $0C, nRst, $03, nC5, nRst, nD5
	dc.b	nRst, $12, nC5, $03, nRst, nD5, $0C, nRst, $03, nC5, nRst, nD5
	dc.b	nRst, $12, nBb4, $03, nRst, nC5, $0C, nRst, $03, nBb4, nRst, nC5
	dc.b	nRst, $12, nD5, $03, nRst, nD5, $07, nRst, $02, nF5, $03, nRst
	dc.b	nF5, nRst, nF5, nRst, $0C
	smpsLoop            $00, $04, another_part_of_me_Loop04
	smpsAlterVol        $0E
	smpsSetvoice        $04
	smpsAlterPitch      $18
	smpsModSet          $08, $01, $06, $04
	smpsPan             panRight, $00
	dc.b	nF4, $30, nA4, nF4, nA4, $03
	smpsSetvoice        $06
	smpsAlterVol        $EC
	dc.b	nA5, nRst, nA5, nRst, nA5, nRst
	smpsModSet          $0E, $01, $F4, $FF
	dc.b	nA5, $09, smpsNoAttack
	smpsModSet          $08, $01, $06, $04
	dc.b	nF5, $12
	smpsAlterVol        $14
	smpsSetvoice        $04
	dc.b	nBb4, $30, nA4, nBb4
	smpsAlterPitch      $E8
	smpsSetvoice        $00
	smpsAlterVol        $EE
	smpsModOff
	smpsNoteFill        $07
	dc.b	nRst, $06, nD7, nD7, nD7, nD7, nD7, nD7, nD7
	smpsNoteFill        $00
	dc.b	nCs7, $06
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsAlterVol        $04
	smpsCall            another_part_of_me_Call00
	smpsAlterVol        $FC
	smpsAlterPitch      $F4
	smpsAlterVol        $12
	smpsAlterVol        $F2
	smpsJump            another_part_of_me_Jump01

; FM5 Data
another_part_of_me_FM5:
	smpsSetvoice        $08
	dc.b	nG4, $2A
	smpsSetvoice        $00
	dc.b	nD6, $06

another_part_of_me_Jump00:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsAlterPitch      $E8
	smpsAlterVol        $04
	dc.b	nRst, $06, nA4, $03, nRst, nB4, $0C, nRst, $03, nA4, nRst
	dc.b	nB4, nRst, $12, nA4, $03, nRst, nB4, $0C, nRst, $03, nA4, nRst
	dc.b	nB4, nRst, $12, nG4, $03, nRst, nA4, $0C, nRst, $03, nG4, nRst
	dc.b	nA4, nRst, $12, nBb4, $03, nRst, nBb4, $07, nRst, $02, nCs5, $03
	dc.b	nRst, nCs5, nRst, nCs5, nRst, $0C
	smpsAlterVol        $FC
	smpsAlterPitch      $18
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nD6, $03, nF6, nD6, nRst, $1E, nG5, $03, nA5, nC6, nD6, $03
	dc.b	nF6, nD6, nRst, $1E, nF5, $03, nG5, nBb5, nC6, nEb6, nC6, nRst
	dc.b	$3F
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsAlterVol        $04
	dc.b	nRst, $03, nCs3, nRst, nCs3, nRst, $0C
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsAlterVol        $FC

another_part_of_me_Loop03:
	dc.b	nD6, $03, nF6, nD6, nRst, $1E, nG5, $03, nA5, nC6, nD6, $03
	dc.b	nF6, nD6, nRst, $1E, nF5, $03, nG5, nBb5, nC6, nEb6, nC6, nRst
	dc.b	$57
	smpsLoop            $00, $02, another_part_of_me_Loop03
	smpsAlterVol        $10
	smpsSetvoice        $04
	smpsAlterPitch      $F4
	dc.b	nD6, $24, nE6, $0C, nF6, $24, nG6, $0C, nD6, $24, nBb6, $0C
	dc.b	nA6, $24, nF6, $0C
	smpsAlterPitch      $18
	smpsModOff
	smpsAlterVol        $EE
	smpsSetvoice        $07
	smpsPan             panRight, $00
	dc.b	nG6, $24, nEb6, $0C, nF6, $18, nD6, $18, nE6, $30
	smpsPan             panCenter, $00
	smpsAlterVol        $12
	smpsAlterPitch      $E8
	smpsAlterPitch      $0C
	smpsSetvoice        $05
	smpsAlterVol        $EE
	smpsModOff
	smpsNoteFill        $07
	dc.b	nRst, $06, nA6, nA6, nA6, nA6, nA6, nA6, nA6
	smpsNoteFill        $00
	dc.b	nA6, $06, nRst, $2A
	smpsAlterVol        $12
	smpsAlterVol        $F0
	smpsJump            another_part_of_me_Jump00

; PSG1 Data
another_part_of_me_PSG1:
	dc.b	nRst, $30

another_part_of_me_Loop0F:
	smpsCall            another_part_of_me_Call03
	dc.b	nRst, nCs5, nRst, nCs5, nRst, $0C
	smpsLoop            $00, $02, another_part_of_me_Loop0F
	smpsPSGAlterVol     $FE

another_part_of_me_Loop10:
	smpsCall            another_part_of_me_Call03
	dc.b	nRst, nCs5, nRst, nCs5, nRst, $0C
	smpsLoop            $00, $02, another_part_of_me_Loop10
	smpsPSGAlterVol     $02
	smpsModSet          $08, $01, $02, $04
	dc.b	nD5, $30, nF5, nD5, nF5, nG5, nF5, nG5
	smpsPSGAlterVol     $FE
	smpsModOff
	smpsNoteFill        $07
	dc.b	nRst, $06, nA5, nA5, nA5, nA5, nA5, nA5, nA5
	smpsNoteFill        $00
	dc.b	nA5, nRst, $2A
	smpsPSGAlterVol     $02
	smpsJump            another_part_of_me_Loop0F

; PSG2 Data
another_part_of_me_PSG2:
	dc.b	nRst, $30

another_part_of_me_Loop0D:
	smpsCall            another_part_of_me_Call05
	smpsLoop            $00, $02, another_part_of_me_Loop0D
	smpsPSGAlterVol     $FE

another_part_of_me_Loop0E:
	smpsCall            another_part_of_me_Call05
	smpsLoop            $00, $02, another_part_of_me_Loop0E
	smpsPSGAlterVol     $02
	smpsModSet          $08, $01, $02, $04
	dc.b	nBb4, $30, nD5, nBb4, nD5, nEb5, nD5, nE5
	smpsPSGAlterVol     $FE
	smpsModOff
	smpsNoteFill        $07
	dc.b	nRst, $06, nG5, nG5, nG5, nG5, nG5, nG5, nG5
	smpsNoteFill        $00
	dc.b	nG5, $06, nRst, $2A
	smpsPSGAlterVol     $02
	smpsJump            another_part_of_me_Loop0D

another_part_of_me_Call05:
	dc.b	nRst, $06, nF4, $03, nRst, nG4, $0C, nRst, $03, nF4, nRst, nG4
	dc.b	nRst, $12, nF4, $03, nRst, nG4, $0C, nRst, $03, nF4, nRst, nG4
	dc.b	nRst, $12, nEb4, $03, nRst, nF4, $0C, nRst, $03, nEb4, nRst, nF4
	dc.b	nRst, $12, nG4, $03, nRst, nG4, $07, nRst, $02, nG4, $03, nRst
	dc.b	nG4, nRst, nG4, nRst, $0C
	smpsReturn

; PSG3 Data
another_part_of_me_PSG3:
	smpsPSGform         $E7
	smpsNoteFill        $00
	dc.b	nMaxPSG, $06, nRst, $24, nMaxPSG, $06

another_part_of_me_Loop09:
	smpsNoteFill        $02
	dc.b	nMaxPSG, $03, $03, $03, $03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03
	smpsNoteFill        $00
	dc.b	$03, $03
	smpsNoteFill        $02
	dc.b	$03, $03, $03, $03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03, $03, $03
	smpsLoop            $00, $03, another_part_of_me_Loop09

another_part_of_me_Loop0A:
	smpsNoteFill        $02
	dc.b	$03, $03, $03, $03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03, $03, $03
	smpsLoop            $00, $02, another_part_of_me_Loop0A
	smpsLoop            $01, $04, another_part_of_me_Loop09
	smpsPSGform         $E7

another_part_of_me_Loop0B:
	smpsNoteFill        $02
	dc.b	$03, $03, $03, $03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03, $03, $03
	smpsLoop            $00, $07, another_part_of_me_Loop0B
	smpsNoteFill        $02
	dc.b	$03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03, $03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03, $03, $03

another_part_of_me_Loop0C:
	smpsNoteFill        $02
	dc.b	$03, $03, $03, $03
	smpsNoteFill        $00
	dc.b	$03
	smpsNoteFill        $02
	dc.b	$03, $03, $03
	smpsLoop            $00, $06, another_part_of_me_Loop0C
	smpsNoteFill        $00
	dc.b	$06, $06, $06, $06, $06, $06, $06, $06, $06, nRst, $2A
	smpsJump            another_part_of_me_Loop09

; DAC Data
another_part_of_me_DAC:
	dc.b	dMuffledSnare, $2A, dClap, $06

another_part_of_me_Loop00:
	dc.b	dKick, $0C, dSnare, $06, dKick, $03, dKick, $0F, dSnare, $0C
	smpsLoop            $00, $03, another_part_of_me_Loop00
	dc.b	dKick, $0C, dSnare, dKick, dSnare
	smpsLoop            $01, $04, another_part_of_me_Loop00

another_part_of_me_Loop01:
	dc.b	dKick, $0C, dSnare, dKick, dSnare
	smpsLoop            $00, $03, another_part_of_me_Loop01
	dc.b	dKick, $0C, dSnare, dKick, $03, dSnare, $09, $0C

another_part_of_me_Loop02:
	dc.b	dKick, $0C, dSnare, dKick, dSnare
	smpsLoop            $00, $03, another_part_of_me_Loop02
	dc.b	dKick, $06, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $30
	smpsJump            another_part_of_me_Loop00

another_part_of_me_Voices:
;	Voice $00
;	$3D
;	$01, $01, $01, $01, 	$8E, $52, $14, $4C, 	$08, $08, $0E, $03
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1B, $80, $80, $9B
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $0C, $14, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $08, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $1B, $00, $00, $1B

;	Voice $01
;	$3A
;	$60, $66, $60, $61, 	$1F, $94, $1F, $1F, 	$0F, $10, $05, $0D
;	$07, $06, $06, $07, 	$2F, $4F, $1F, $5F, 	$21, $14, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $06, $06
	smpsVcCoarseFreq    $01, $00, $06, $00
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $05, $10, $0F
	smpsVcDecayRate2    $07, $06, $06, $07
	smpsVcDecayLevel    $05, $01, $04, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $14, $21

;	Voice $02
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $90, $17, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $10, $17, $10, $16

;	Voice $03
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $04
;	$3D
;	$01, $02, $02, $02, 	$1F, $08, $8A, $0A, 	$08, $08, $08, $08
;	$00, $01, $00, $00, 	$0F, $1F, $1F, $1F, 	$1F, $88, $88, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0A, $0A, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $08, $08, $1F

;	Voice $05
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

;	Voice $06
;	$38
;	$02, $02, $02, $01, 	$1F, $11, $11, $10, 	$00, $00, $00, $02
;	$01, $01, $01, $01, 	$0F, $0F, $0F, $3F, 	$2C, $22, $22, $83
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $11, $11, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $00, $00, $00
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $03, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $22, $22, $2C

;	Voice $07
;	$38
;	$35, $05, $10, $01, 	$14, $14, $10, $0E, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$9F, $0F, $0F, $1F, 	$25, $31, $2A, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $03
	smpsVcCoarseFreq    $01, $00, $05, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $10, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2A, $31, $25

;	Voice $08
;	$37
;	$52, $31, $34, $50, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$80, $87, $87, $87
	smpsVcAlgorithm     $07
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $05
	smpsVcCoarseFreq    $00, $04, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $07, $07, $00

;	Voice $09
;	$06
;	$61, $03, $32, $71, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1E, $85, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $06
	smpsVcCoarseFreq    $01, $02, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $05, $1E

