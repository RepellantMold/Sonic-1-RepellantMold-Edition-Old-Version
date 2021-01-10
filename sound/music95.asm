LostLabyrinth3_Header:
	sHeaderInit
	sHeaderPatch	LostLabyrinth3_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$01, $80
	sHeaderDAC	LostLabyrinth3_DAC1
	sHeaderFM	LostLabyrinth3_FM1, $00, $08
	sHeaderFM	LostLabyrinth3_FM2, $00, $09
	sHeaderFM	LostLabyrinth3_FM3, $00, $10
	sHeaderFM	LostLabyrinth3_FM4, $00, $10
	sHeaderFM	LostLabyrinth3_FM5, $00, $13
	sHeaderFM	LostLabyrinth3_FM6, $00, $09
	sHeaderPSG	LostLabyrinth3_PSG1, $00, $00, $00, v00
	sHeaderPSG	LostLabyrinth3_DAC1, $00, $00, $00, v00
	sHeaderPSG	LostLabyrinth3_PSG2, $00, $00, $00, v00

LostLabyrinth3_FM1:
	sPan		spCenter
	sPatFM		$00
	dc.b nD4, $06, nA3, nF3, nD3, nRst, nA3, nD4
	dc.b $0C, nG3, nE3, $06, nC3, $0C, nG3, $06
	dc.b nC4, nB3, nBb3, $03, nRst, nBb3, $06, nA3
	dc.b nF3, nG3, $03, nRst, nG3, $06, nF3, nD3
	dc.b nE3, nF3, nG3, $03, nRst, nG3, $0C, nA3
	dc.b $06, nBb3, $0C, nD4, $06, nA3, nF3, nD3
	dc.b nRst, nA3, nD4, $0C, nG3, nE3, $06, nC3
	dc.b $0C, nG3, $06, nC4, nB3, nBb3, $03, nRst
	dc.b nBb3, $06, nA3, nF3, nG3, $03, nRst, nG3
	dc.b $06, nF3, nD3, nE3, nF3, nG3, $03, nRst
	dc.b nG3, $0C, nA3, $06, nF3, $0C, nD4, $06
	dc.b nF3, nG3, nD3, nRst, nE3, nA3, nF3, nG3
	dc.b nC4, nF4, nE4, nRst, nC4, nF4, nE4, nBb3
	dc.b nF3, nC4, nBb3, $0C, nF3, $06, nF4, nBb3
	dc.b $0C, nD3, $06, nE3, nF3, nG3, nF3, nA3
	dc.b nC4, nD4, nF3, nG3, nD3, nRst, nF3, nA3
	dc.b nF3, nG3, nC4, nF4, $0C, nE4, $06, nC4
	dc.b nEb4, nBb3, $0C, nF3, $06, nC4, nBb3, $0C
	dc.b nF3, $06, nF4, nBb3, $0C, nD3, $06, nE3
	dc.b nF3, nG3, nF3, nA3, nC4, nD4, nRst, nF3
	dc.b nD3, nRst, nG3, nD3, nA3, nRst, nD3, nC4
	dc.b nD3, nD4, nD3, nF4, nD4, nF3, nRst, nD4
	dc.b nF3, nRst, nF3, nC4, nD4, nRst, nF3, nC4
	dc.b nD4, nF4, nF3, nA3, nD3, nBb3, nRst, nD3
	dc.b nF3, nRst, nD3, nG3, nF3, nRst, nBb3, nA3
	dc.b nF3, nC4, nBb3, nA3, nF3, nBb2, $12, nF3
	dc.b $06, nBb3, nE3, $12, nEb3, $0C, nBb3, $06
	dc.b nEb4, $0C, nD4, $06, nCs4, $0C
	sJump	LostLabyrinth3_FM1

LostLabyrinth3_FM2:
	sPan		spLeft
	sPatFM		$01
	ssMod68k	$00, $01, $01, $04

LostLabyrinth3_Jump1:
	dc.b nA4, $18, nRst, $06, nC5, $0C, nD5, $06
	dc.b nG4, $12, nF4, $0C, nRst, $06, nE4, $0C
	dc.b nD4, $12, nRst, $06, nA4, $12, nG4, $2A
	dc.b nRst, $0C, nA4, $18, nRst, $06, nC5, $0C
	dc.b nD5, $06, nG4, $12, nF4, $0C, nRst, $06
	dc.b nE4, $0C, nD4, nRst, $06, nA4, $36, nRst
	dc.b $18, nA4, $0C, nF4, $06, nD4, nRst, nA4
	dc.b nF4, nG4, $12, nE4, $06, nC4, nRst, nE4
	dc.b nG4, $0C, nF4, nRst, $06, nD4, $1E, nRst
	dc.b $30, nA4, $0C, nF4, $06, nD4, nRst, nA4
	dc.b nRst, nG4, $0C, nE4, $06, nC4, $0C, nC5
	dc.b nB4, $06, nBb4, $36

LostLabyrinth3_Loop1:
	dc.b nRst, $1E, nA4, $06, nC5, nD5, nF4, nRst
	dc.b $18, nF4, $06, nE4, nD4
	sLoop		$00, $03, LostLabyrinth3_Loop1
	dc.b nRst, $1E, nD4, $06, nE4, nF4, nA4, $12
	dc.b nG4, $06, nRst, nG4, $12, nC5, nBb4, $06
	dc.b nRst, nBb4, $12
	sJump		LostLabyrinth3_Jump1

LostLabyrinth3_FM3:
	sPan		spRight
	sPatFM		$03

LostLabyrinth3_Jump2:
	dc.b nRst, $0C, nA5, $06, nRst, nD5, nF5, nA5
	dc.b nD6, nRst, $0C, nG5, $06, nRst, nC6, nG5
	dc.b nE5, nC5, nRst, nBb5, nBb5, nRst, nBb5, nRst
	dc.b nBb5, nRst, nC6, nRst, nD5, nC5, nF5, nE5
	dc.b nG5, nF5, nRst, $0C, nA5, $06, nRst, nD5
	dc.b nF5, nA5, nD6, nRst, $0C, nG5, $06, nRst
	dc.b nC6, nG5, nE5, nC5, nRst, nBb5, nBb5, nRst
	dc.b nBb5, nRst, nBb5, nRst, nA5, nRst, nC6, nRst
	dc.b nC5, nE5, nF5, nG5, nRst, nD6, nA5, nRst
	dc.b nF5, nD5, nRst, nC6, nRst, nC6, nRst, nC6
	dc.b nRst, nD6, nC6, nRst, $12, nD6, $06, nBb5
	dc.b nF5, nD5, nRst, nBb5, nRst, nA5, nRst, nBb5
	dc.b nRst, nBb5, nRst, nC6, nRst, nD6, nA5, nRst
	dc.b nF5, nD5, nRst, nC6, nRst, nC6, nRst, nF6
	dc.b nE6, nD6, nC6, nBb5, nRst, nBb5, nRst, nC6
	dc.b nC6, nBb5, nRst, nC6, nRst, nBb5, nRst, nC6
	dc.b nRst, nC6, nD6, nA5, nA5, nRst, nA5, nRst
	dc.b $18, nA5, $06, nRst, nA5, nA5, nRst, nG5
	dc.b nRst, nF5, nRst, nA5, nRst, nC6, nRst, $18
	dc.b nD6, $06, nRst, nA5, nRst, nA5, nC6, nRst
	dc.b nD6, nRst, nBb5, nRst, nBb5, nRst, $18, nC6
	dc.b $06, nRst, nBb5, nRst, nBb5, nC6, nRst, nBb5
	dc.b nRst, nBb5, nRst, $0C, nC6, $06, nRst, nE5
	dc.b nRst, $0C, nEb6, $06, nBb5, nRst, nG5, nRst
	dc.b nA5, nBb5, nRst
	sJump		LostLabyrinth3_Jump2

LostLabyrinth3_FM4:
	sPan		spLeft
	ssDetune	$00
	sPatFM		$03

LostLabyrinth3_Jump3:
	dc.b nRst, $0C, nD5, $06, nRst, nD5, nF5, nA5
	dc.b nD6, nRst, $0C, nC5, $06, nRst, nC6, nG5
	dc.b nE5, nC5, nRst, nF5, nF5, nRst, nE5, nRst
	dc.b nF5, nRst, nE5, nRst, nD5, nC5, nF5, nE5
	dc.b nG5, nF5, nRst, $0C, nD5, $06, nRst, nD5
	dc.b nF5, nA5, nD6, nRst, $0C, nC5, $06, nRst
	dc.b nC6, nG5, nE5, nC5, nRst, nF5, nF5, nRst
	dc.b nE5, nRst, nF5, nRst, nE5, nRst, nE5, nRst
	dc.b nC5, nE5, nF5, nG5, nRst, nD6, nA5, nRst
	dc.b nF5, nD5

LostLabyrinth3_Loop2:
	dc.b nRst, nG5
	sLoop		$00, $04, LostLabyrinth3_Loop2
	dc.b nE5, nRst, $12, nD6, $06, nBb5, nF5, nD5

LostLabyrinth3_Loop3:
	dc.b nRst, nF5
	sLoop		$00, $04, LostLabyrinth3_Loop3
	dc.b nRst, nG5, nRst, nD6, nA5, nRst, nF5, nD5
	dc.b nRst, nG5, nRst, nG5, nRst, nF6, nE6, nD6
	dc.b nC6, nF5, nRst, nF5, nRst, nG5, nG5, nF5
	dc.b nRst, nF5, nRst, nF5, nRst, nG5, nRst, nC6
	dc.b nD6, nA5, nF5, nRst, nF5, nRst, $18, nF5
	dc.b $06, nRst, nD5, nD5, nRst, nD5, nRst, nD5

LostLabyrinth3_Loop4:
	dc.b nRst, nF5, nRst, nF5, nRst, $18, nF5, $06
	dc.b nRst, nF5, nRst, nF5, nF5, nRst, nF5
	sLoop		$00, $02, LostLabyrinth3_Loop4
	dc.b nRst, $0C, nF5, $06, nRst, nC6, nRst, nE5
	dc.b nRst, $0C, nEb6, $06, nBb5, nRst, nG5, nRst
	dc.b nA5, nBb5, nRst
	sJump		LostLabyrinth3_Jump3

LostLabyrinth3_FM5:
	sPan		spCenter
	ssDetune	$00
	sPatFM		$01

LostLabyrinth3_Jump4:
	dc.b nRst, $60, nBb3, $12, nRst, $06, nD4, $12
	dc.b nE4, $2A, nRst, $6C, nBb3, $0C, nRst, $06
	dc.b nF4, $1E, nE4, $18, nD4, $06, nRst, nC4
	dc.b nRst, $66, nD4, $0C, nRst, $06, nBb3, $1E
	dc.b nRst, $78, nE4, $0C, nEb4, $06, nD4, $36
	dc.b nRst, $1E, nF3, $06, nA3, nE4, nD4, nRst
	dc.b $18, nD4, $06, nC4, nA3, nRst, $1E, nA3
	dc.b $06, nC4, nF4, nD4, nRst, $18, nD4, $06
	dc.b nC4, nA3, nRst, $1E, nD4, $06, nF4, nD4
	dc.b nBb3, nRst, $18, nD4, $06, nC4, nBb3, nRst
	dc.b $1E, nF3, $06, nBb3, nA3, nF4, $12, nE4
	dc.b $06, nRst, nE4, $12, nG4, nEb4, $06, nRst
	dc.b nG4, nF4, $0C
	sJump		LostLabyrinth3_Jump4

LostLabyrinth3_FM6:
	sPatFM		$02
	saTranspose	$F4

LostLabyrinth3_Jump5:
	dc.b nB0, $06, $06, $06, $06
	sPatFM		$04
	dc.b nG2, $0C, $0C
	sPatFM		$02
	dc.b nB0, $06, $06, $06, $06
	sPatFM		$04
	dc.b nG2, $0C, $06, $03, $03

LostLabyrinth3_Loop5:
	sPatFM		$02
	dc.b nB0, $06, $06
	sPatFM		$04
	dc.b nG2, $0C
	sLoop		$00, $02, LostLabyrinth3_Loop5
	sPatFM		$02
	dc.b nB0, $06, $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, $0C, $06
	sPatFM		$04
	dc.b nG2, nG2, $03, $03
	sPatFM		$02
	dc.b nB0, $06, $06, $06, $06
	sPatFM		$04
	dc.b nG2, $0C, $0C
	sPatFM		$02
	dc.b nB0, $06, $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, $12
	sPatFM		$04
	dc.b nG2, $06, $03, $03

LostLabyrinth3_Loop6:
	sPatFM		$02
	dc.b nB0, $06, $06
	sPatFM		$04
	dc.b nG2, $0C
	sLoop		$00, $02, LostLabyrinth3_Loop6
	sPatFM		$02
	dc.b nB0, $06, $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, $0C, $06
	sPatFM		$04
	dc.b nG2, nG2, $03, $03
	sPatFM		$02
	dc.b nB0, $0C, $06, $06
	sPatFM		$04
	dc.b nG2, $0C

LostLabyrinth3_Loop7:
	sPatFM		$02
	dc.b nB0, $06
	sPatFM		$04
	dc.b nG2
	sLoop		$00, $02, LostLabyrinth3_Loop7
	sPatFM		$02
	dc.b nB0, nB0
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0
	sPatFM		$04
	dc.b nG2, nG2
	sPatFM		$02
	dc.b nB0

LostLabyrinth3_Loop8:
	dc.b nB0
	sPatFM		$04
	dc.b nG2, $0C
	sPatFM		$02
	dc.b nB0, $06
	sLoop		$00, $02, LostLabyrinth3_Loop8
	dc.b $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, $0C, $06
	sPatFM		$04
	dc.b nG2, $0C
	sPatFM		$02
	dc.b nB0, nB0, $06, $06
	sPatFM		$04
	dc.b nG2, $0C

LostLabyrinth3_Loop9:
	sPatFM		$02
	dc.b nB0, $06
	sPatFM		$04
	dc.b nG2
	sLoop		$00, $02, LostLabyrinth3_Loop9
	sPatFM		$02
	dc.b nB0, nB0
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0
	sPatFM		$04
	dc.b nG2, nG2
	sPatFM		$02
	dc.b nB0

LostLabyrinth3_Loop10:
	dc.b nB0
	sPatFM		$04
	dc.b nG2, $0C
	sPatFM		$02
	dc.b nB0, $06
	sLoop		$00, $02, LostLabyrinth3_Loop10
	dc.b $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, $0C, $06
	sPatFM		$04
	dc.b nG2, nG2
	sPatFM		$02
	dc.b nB0

LostLabyrinth3_Loop11:
	dc.b nB0
	sPatFM		$04
	dc.b nG2, $0C
	sPatFM		$02
	dc.b nB0, $06
	sLoop		$00, $03, LostLabyrinth3_Loop11
	dc.b $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, nB0

LostLabyrinth3_Loop12:
	dc.b nB0
	sPatFM		$04
	dc.b nG2, $0C
	sPatFM		$02
	dc.b nB0, $06
	sLoop		$00, $07, LostLabyrinth3_Loop12
	sPatFM		$04
	dc.b nG2, nG2
	sPatFM		$02
	dc.b nB0, nB0, nB0, $0C, $06
	sPatFM		$04
	dc.b nG2
	sPatFM		$02
	dc.b nB0, $0C
	sPatFM		$04
	dc.b nG2, $06
	sPatFM		$02
	dc.b nB0
	sPatFM		$04
	dc.b nG2, $0C

LostLabyrinth3_Loop13:
	sPatFM		$02
	dc.b nB0, $06
	sPatFM		$04
	dc.b nG2
	sLoop		$00, $02, LostLabyrinth3_Loop13
	sPatFM		$02
	sPatFM		$04
	dc.b $06
	sPatFM		$02
	sJump		LostLabyrinth3_Jump5

LostLabyrinth3_PSG1:
	ssMod68k	$00, $02, $00, $02
	ssMod68k	$00, $02, $00, $02
	saVolPSG	$04
	ssDetune	$FF
	sVolEnvPSG	v00
	ssMod68k	$00, $02, $00, $02

LostLabyrinth3_Jump6:
	dc.b nA1, $18, nRst, $06, nC2, $0C, nD2, $06
	dc.b nG1, $12, nF1, $0C, nRst, $06, nE1, $0C
	dc.b nD1, $12, nRst, $06, nA1, $12, nG1, $2A
	dc.b nRst, $0C, nA1, $18, nRst, $06, nC2, $0C
	dc.b nD2, $06, nG1, $12, nF1, $0C, nRst, $06
	dc.b nE1, $0C, nD1, nRst, $06, nA1, $36, nRst
	dc.b $18, nA1, $0C, nF1, $06, nD1, nRst, nA1
	dc.b nF1, nG1, $12, nE1, $06, nC1, nRst, nE1
	dc.b nG1, $0C, nF1, nRst, $06, nD1, $1E, nRst
	dc.b $30, nA1, $0C, nF1, $06, nD1, nRst, nA1
	dc.b nRst, nG1, $0C, nE1, $06, nC1, $0C, nC2
	dc.b nB1, $06, nBb1, $36

LostLabyrinth3_Loop14:
	dc.b nRst, $1E, nA1, $06, nC2, nD2, nF1, nRst
	dc.b $18, nF1, $06, nE1, nD1
	sLoop		$00, $03, LostLabyrinth3_Loop14
	dc.b nRst, $1E, nD1, $06, nE1, nF1, nA1, $12
	dc.b nG1, $06, nRst, nG1, $12, nC2, nBb1, $06
	dc.b nRst, nBb1, $12
	sJump		LostLabyrinth3_Jump6

LostLabyrinth3_PSG2:
	sNoisePSG	$E7
	sVolEnvPSG	v02
	saVolPSG	$03
	ssDetune	$00

LostLabyrinth3_Jump7:
	dc.b nA5

LostLabyrinth3_Loop16:
	dc.b $0C, $06, $0C, $0C, $0C, $06, $12

LostLabyrinth3_Loop15:
	dc.b $0C
	sLoop		$00, $09, LostLabyrinth3_Loop15
	dc.b $06
	sLoop		$01, $06, LostLabyrinth3_Loop16
	sJump		LostLabyrinth3_Jump7

LostLabyrinth3_DAC1:
	sStop

LostLabyrinth3_Patches:

	; Patch $00
	; $3C
	; $01, $00, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $12, $05,	$07, $04, $09, $02
	; $55, $3A, $25, $1A,	$1A, $00, $07, $00
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $12, $0D, $05
	spSustainLv	$05, $02, $03, $01
	spDecayRt	$07, $09, $04, $02
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$1A, $07, $00, $00

	; Patch $01
	; $3A
	; $32, $01, $52, $31,	$1F, $1F, $1F, $18
	; $01, $1F, $00, $00,	$00, $0F, $00, $00
	; $5A, $0F, $03, $1A,	$3B, $30, $4F, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $00, $03
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $00, $1F, $00
	spSustainLv	$05, $00, $00, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0A, $03, $0F, $0A
	spTotalLv	$3B, $4F, $30, $00

	; Patch $02
	; $0E
	; $03, $01, $02, $00,	$1F, $1F, $1F, $1F
	; $1F, $1F, $1F, $1F,	$10, $0A, $0F, $0C
	; $47, $06, $08, $06,	$00, $00, $0C, $00
	spAlgorithm	$06
	spFeedback	$01
	spDetune	$00, $00, $00, $00
	spMultiple	$03, $02, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1F, $1F, $1F
	spSustainLv	$04, $00, $00, $00
	spDecayRt	$10, $0F, $0A, $0C
	spReleaseRt	$07, $08, $06, $06
	spTotalLv	$00, $0C, $00, $00

	; Patch $03
	; $00
	; $13, $71, $3B, $71,	$53, $5B, $1D, $1F
	; $01, $03, $0F, $00,	$1B, $1D, $1F, $0D
	; $30, $03, $E3, $0F,	$06, $0C, $1F, $0F
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$01, $03, $07, $07
	spMultiple	$03, $0B, $01, $01
	spRateScale	$01, $00, $01, $00
	spAttackRt	$13, $1D, $1B, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $0F, $03, $00
	spSustainLv	$03, $0E, $00, $00
	spDecayRt	$1B, $1F, $1D, $0D
	spReleaseRt	$00, $03, $03, $0F
	spTotalLv	$06, $1F, $0C, $0F

	; Patch $04
	; $34
	; $0F, $7F, $45, $40,	$1F, $1F, $1F, $1F
	; $0C, $0F, $13, $0F,	$00, $13, $17, $0B
	; $F7, $29, $1F, $29,	$00, $00, $0D, $00
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $04, $07, $04
	spMultiple	$0F, $05, $0F, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $13, $0F, $0F
	spSustainLv	$0F, $01, $02, $02
	spDecayRt	$00, $17, $13, $0B
	spReleaseRt	$07, $0F, $09, $09
	spTotalLv	$00, $0D, $00, $00
