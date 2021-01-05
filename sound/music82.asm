LZ1_Header:
	sHeaderInit
	sHeaderPatch	LZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$02, $0F
	sHeaderDAC	LZ1_DAC1
	sHeaderFM	LZ1_FM1, $0C, $09
	sHeaderFM	LZ1_FM2, $00, $06
	sHeaderFM	LZ1_FM3, $F4, $14
	sHeaderFM	LZ1_FM4, $F4, $14
	sHeaderFM	LZ1_FM5, $F4, $14
	sHeaderPSG	LZ1_PSG1, $00, $00, $00, v00
	sHeaderPSG	LZ1_PSG1, $00, $00, $00, v00
	sHeaderPSG	LZ1_PSG2, $00, $00, $00, v02

LZ1_DAC1:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $12, dKick, $06, dSnare, $0C, dKick, $06, $06
	dc.b dSnare, $0C, dKick, dSnare, $12, dKick, $06, dSnare
	dc.b dKick, $0C, $06, dSnare, $0C, dKick, $06, $06
	dc.b dSnare, $0C
	sLoop		$00, $02, LZ1_DAC1
	dc.b dKick

LZ1_Loop5:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, dSnare, dKick
	dc.b $0C
	sLoop		$00, $03, LZ1_Loop5
	dc.b dSnare, $06, dKick, $0C, dSnare, $06, $06, $06
	sLoop		$01, $02, LZ1_DAC1
	dc.b dKick, dKick, dSnare, dSnare, $0C, dKick, $06, dSnare
	dc.b $12, dKick, $06, dSnare, $0C, dKick, $06, $06
	dc.b dSnare, $0C, dKick, $06, $06, dSnare, dSnare, $0C
	dc.b dKick, $06, dSnare, dKick, dKick, $0C, dSnare, $12
	dc.b dKick
	sJump		LZ1_DAC1

LZ1_FM1:
	sPatFM		$00

LZ1_Loop1:
	dc.b nA2, $06, nD2, nA2, nD2, $09, nRst, $03
	sLoop		$00, $02, LZ1_Loop1
	dc.b nA2, $06, nD2, nG2, nC2, $12, nBb2, $06
	dc.b nBb1, nBb2, nBb1, $09, nRst, $03, nBb2, $06
	dc.b nBb1, nG2, nBb1, $09, nRst, $03, nA2, $06
	dc.b nBb1, nG2, nG1, $12
	sLoop		$01, $02, LZ1_Loop1
	dc.b nBb1, $06, nF2, nBb1, nBb2, nF3, nBb3, nF2
	dc.b nBb2, nBb1, nF2, nBb1, nBb2, nBb3, nF3, nBb2
	dc.b nF2, nG1, nD2, nG1, nG2, nD3, nG3, nD2
	dc.b nG2, nG1, nD2, nG2, nD3, nC4, nG3, nE3
	dc.b nC3
	sLoop		$02, $02, LZ1_Loop1
	dc.b nA2

LZ1_Loop2:
	dc.b nD2, nA2, nD2, $09, nRst, $03, nA2, $06
	sLoop		$00, $02, LZ1_Loop2
	dc.b nD2, nG2, nC2, $0C, nE2, $06, nA2, nD2
	dc.b nA2, nD2, $0C, nA1, $06, nC2, nE2, nD2
	dc.b nD1, nF1, nG1, nAb1, nA1, nC2, nE2
	sJump		LZ1_Loop1

LZ1_FM2:
	sPatFM		$02
	dc.b nRst, $0C, nD5, $06, nA4, nC5, nG4, $12
	dc.b nA4, nF4, nG4, $0C, nD4, $12, nF4, nG4
	dc.b nC4, $27, nRst, $0F, nD5, $06, nA4, nC5
	dc.b nG4, $12, nA4, nF4, nG4, $0C, nD4, $12
	dc.b nF4, nG4, nC5, $2A
	sPatFM		$01
	dc.b nBb2, $60, nG2, $48, nC3, $18, nRst, $0C
	sPatFM		$02
	dc.b nD5, nA4, $06, nC5, $0C, nG4, $06, nA4
	dc.b $0C, nF4, $06, nG4, $0C, nA4, $06, nG4
	dc.b nF4, nD4, nRst, nD4, nF4, nRst, nF4, nG4
	dc.b nRst, nG4, nC5, $27, nRst, $0F, nD5, $0C
	dc.b nA4, $06, nC5, $0C, nG4, $06, nA4, $0C
	dc.b nF4, $06, nG4, $0C, nA4, $06, nG4, nF4
	dc.b nD4, nRst, nD4, nF4, nRst, nF4, nG4, nRst
	dc.b nG4, nC5, $2A
	sPatFM		$01
	dc.b nBb2, $60, nG2, $48, nC3, $18, nRst, $7F
	dc.b $41
	sJump		LZ1_FM2

LZ1_FM3:
	sPan		spCenter
	sPatFM		$03

LZ1_Jump1:
	dc.b nD6, $06, nRst, nD6, nRst, $0C, nE6, $12
	dc.b nF6, $06, nD6, nRst, nE6, $0C, nD6, $12
	dc.b $06, nRst, nD6, nRst, $0C, nD6, $06, nRst
	dc.b nF6, $0C, $06
	sPatFM		$04
	dc.b nD6, nF6, nG6, nC6, $12
	sPatFM		$03
	dc.b nD6, $06, nRst, nD6, nRst, $0C, nE6, $12
	dc.b nF6, $06, nD6, nRst, nE6, $0C, nD6, $12
	dc.b $06, nRst, nD6, nRst, $0C, nD6, $06, nRst
	dc.b nF6, $0C, $06
	sPatFM		$04
	dc.b nD6, nF6, nG6, nD6, nF6, nG6
	sPatFM		$03
	dc.b nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4
	dc.b nA4, nA4, nAb4, nA4, nRst, nD4, nC5, nG4
	dc.b nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4
	dc.b nA4, $0C, nG4, nC5, nF4, nD6, $06, nRst
	dc.b nD6, nRst, $0C, nE6, $12, nF6, $06, nD6
	dc.b nRst, nE6, $0C, nD6, $12, $06, nRst, nD6
	dc.b nRst, $0C, nD6, $06, nRst, nF6, $0C, $06
	sPatFM		$04
	dc.b nD6, nF6, nG6, nC6, $12
	sPatFM		$03
	dc.b nD6, $06, nRst, nD6, nRst, $0C, nE6, $12
	dc.b nF6, $06, nD6, nRst, nE6, $0C, nD6, $12
	dc.b $06, nRst, nD6, nRst, $0C, nD6, $06, nRst
	dc.b nF6, $0C, $06
	sPatFM		$04
	dc.b nD6, nF6, nG6, nD6, nF6, nG6
	sPatFM		$03
	dc.b nA4, $0C, nAb4, $06, nA4, $0C, nD4, $06
	dc.b nF4, nG4, nA4, $0C, nC5, nA4, $06, nG4
	dc.b nF4, $0C, nG4, $06, nA4, $0C, nC5, nA4
	dc.b nD5, nC5, $06, nA4, nF5, nE5, nD5, nC5
	dc.b nA4, nD5, $60, nRst
	sJump		LZ1_Jump1

LZ1_FM4:
LZ1_Jump2:
	sPatFM		$03
	sPan		spCenter
	dc.b nA5, $06
	dc.b nRst, nA5, nRst, $0C, nA5, $12, nRst, $0C
	dc.b nA5, $06, nC6, $0C, nA5, $12, nBb5, $06
	dc.b nRst, nBb5, nRst, $0C, nBb5, $06, nRst, nBb5
	dc.b $0C, nA5, $06, nRst
	sPatFM		$04
	saVolFM		$0E
	ssDetune	$FF
	sPan		spLeft
	dc.b nD6, nF6, nG6, nC6, $0C
	sPatFM		$03
	saVolFM		$F2
	ssDetune	$00
	sPan		spCenter
	dc.b nA5, $06, nRst, nA5, nRst, $0C, nA5, $12
	dc.b nRst, $0C, nA5, $06, nRst, $0C, nA5, $12
	dc.b nBb5, $06, nRst, nBb5, nRst, $0C, nBb5, $06
	dc.b nRst, nBb5, $0C, nA5, $06, nRst
	sPatFM		$04
	saVolFM		$0E
	ssDetune	$FF
	sPan		spLeft
	dc.b nD6, nF6, nG6, nD6, nF6, nG6
	sPatFM		$03
	dc.b nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4
	dc.b nA4, nA4, nAb4, nA4, nRst, nD4, nC5, nG4
	dc.b nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4
	dc.b nA4, $0C, nG4, nC5, nF4, $06
	saVolFM		$F2
	ssDetune	$00
	sPan		spCenter
	dc.b nA5, nRst, nA5, nRst, $0C, nA5, $12, nRst
	dc.b $0C, nA5, $06, nC6, $0C, nA5, $12, nBb5
	dc.b $06, nRst, nBb5, nRst, $0C, nBb5, $06, nRst
	dc.b nBb5, $0C, nA5, $06, nG6
	sPatFM		$04
	saVolFM		$0E
	ssDetune	$FF
	dc.b nD6, nF6, nG6, nC6, $0C
	sPatFM		$03
	saVolFM		$F2
	ssDetune	$00
	dc.b nA5, $06, nRst, nA5, nRst, $0C, nA5, $12
	dc.b nRst, $0C, nA5, $06, nRst, $0C, nA5, $12
	dc.b nBb5, $06, nRst, nBb5, nRst, $0C, nBb5, $06
	dc.b nRst, nBb5, $0C, nA5, $06, nRst
	sPatFM		$04
	saVolFM		$0E
	ssDetune	$FF
	dc.b nD6, nF6, nG6, nD6, nF6, nG6
	sPatFM		$03
	dc.b nA4, $0C, nAb4, $06, nA4, $0C, nD4, $06
	dc.b nF4, nG4, nA4, $0C, nC5, nA4, $06, nG4
	dc.b nF4, $0C, nG4, $06, nA4, $0C, nC5, nA4
	dc.b nD5, nC5, $06, nA4, nF5, nE5, nD5, nC5
	dc.b nA4, nD5, $60, nRst, $5A
	saVolFM		$F2
	ssDetune	$00
	sJump		LZ1_Jump2

LZ1_FM5:
	sPan		spCenter
	sPatFM		$03

LZ1_Jump3:
	dc.b nD5, $06, nRst, nD5, nRst, $0C, nD5, $12
	dc.b $06, nF5, nD5, nG5, $0C, nF5, $12, nD5
	dc.b $06, nRst, nD5, nRst, $0C, nD5, $06, nRst
	dc.b nD5, $0C, $06, nE5, nF5, nG5, nF5, nE5
	dc.b nF5, nD5, nRst, nD5, nRst, $0C, nD5, $12
	dc.b $06, nF5, nD5, nG5, $0C, nF5, $12, nD5
	dc.b $06, nRst, nD5, nRst, $0C, nD5, $06, nRst
	dc.b nD5, $0C, $06, nE5, nF5, nG5, nA5, nC6
	dc.b nD6, nRst, $0C, nF6, $06, $06, nRst, nF6
	dc.b nRst, $0C, nF6, $06, nRst, nF6, nRst, nE6
	dc.b nF6, nE6, nD6, nRst, $0C, nF6, $06, $06
	dc.b nRst, nF6, nRst, nA5, nF6, nRst, nF6, nRst
	dc.b nE6, nF6, nE6, nD6, nD5, nRst, nD5, nRst
	dc.b $0C, nD5, $12, $06, nF5, nD5, nG5, $0C
	dc.b nF5, $12, nD5, $06, nRst, nD5, nRst, $0C
	dc.b nD5, $06, nRst, nD5, $0C, $06, nE5, nF5
	dc.b nG5, nF5, nE5, nF5, nD5, nRst, nD5, nRst
	dc.b $0C, nD5, $12, $06, nF5, nD5, nG5, $0C
	dc.b nF5, $12, nD5, $06, nRst, nD5, nRst, $0C
	dc.b nD5, $06, nRst, nD5, $0C, $06, nE5, nF5
	dc.b nG5, nA5, nC6

LZ1_Loop3:
	dc.b nD6, nRst, $0C, nF6, $06, $06, nRst, nF6
	dc.b nRst, nA5, nF6, nRst, nF6, nRst, nE6, nF6
	dc.b nE6
	sLoop		$00, $02, LZ1_Loop3
	dc.b nD6, nRst, nF6, nRst, nF6, nE6, nF6, nE6
	dc.b nRst, nF6, nRst, nF6, nRst, nG6, nF6, nE6
	dc.b nC6, nF6, nD6, nA5, nE6, $0C, nC6, $06
	dc.b nG5, nF5, nD6, $0C, nRst, $24
	sJump		LZ1_Jump3

LZ1_PSG2:
	sNoisePSG	$E7

LZ1_Jump4:
	dc.b nA5

LZ1_Loop4:
	dc.b $0C, $06, $0C, $06, $12, $06, $0C, $06
	dc.b $06, $0C
	sLoop		$00, $0B, LZ1_Loop4
	dc.b $0C, $06, $0C, $06, $12, $06, $0C, $06
	dc.b $06, $12, $06, $0C, $06, $06, $06, $0C
	dc.b $06, $0C, $0C, $12, $06, $0C, $0C, $06
	dc.b $06, $0C, $0C, $06, $06, $0C
	sJump		LZ1_Jump4

LZ1_PSG1:
	sStop

LZ1_Patches:

	; Patch $00
	; $06
	; $00, $00, $50, $60,	$1F, $5A, $9F, $5F
	; $09, $09, $1F, $1F,	$07, $00, $1F, $1F
	; $08, $F8, $EF, $FF,	$1A, $80, $FF, $FF
	spAlgorithm	$06
	spFeedback	$00
	spDetune	$00, $05, $00, $06
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $02, $01, $01
	spAttackRt	$1F, $1F, $1A, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $1F, $09, $1F
	spSustainLv	$00, $0E, $0F, $0F
	spDecayRt	$07, $1F, $00, $1F
	spReleaseRt	$08, $0F, $08, $0F
	spTotalLv	$1A, $7F, $00, $7F

	; Patch $01
	; $33
	; $0C, $01, $01, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $05, $00,	$00, $00, $00, $07
	; $00, $00, $30, $05,	$28, $1D, $0C, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$0C, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $05, $00, $00
	spSustainLv	$00, $03, $00, $00
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$00, $00, $00, $05
	spTotalLv	$28, $0C, $1D, $00

	; Patch $02
	; $3B
	; $04, $32, $03, $01,	$14, $0E, $12, $4E
	; $00, $10, $12, $0C,	$00, $00, $00, $00
	; $0F, $5F, $9F, $2F,	$00, $3E, $26, $85
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $03, $00
	spMultiple	$04, $03, $02, $01
	spRateScale	$00, $00, $00, $01
	spAttackRt	$14, $12, $0E, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $12, $10, $0C
	spSustainLv	$00, $09, $05, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $26, $3E, $05

	; Patch $03
	; $3C
	; $01, $02, $0F, $04,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $80, $1D, $87
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $00, $07

	; Patch $04
	; $2A
	; $01, $08, $06, $04,	$53, $1F, $1F, $50
	; $12, $14, $11, $1F,	$00, $00, $00, $00
	; $29, $15, $36, $0B,	$17, $33, $1C, $80
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $06, $08, $04
	spRateScale	$01, $00, $00, $01
	spAttackRt	$13, $1F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $11, $14, $1F
	spSustainLv	$02, $03, $01, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$09, $06, $05, $0B
	spTotalLv	$17, $1C, $33, $00
