Intro_Header:
	sHeaderInit
	sHeaderPatch	Intro_Patches
	sHeaderCh	$06, $00
	sHeaderTempo	$02, $40
	sHeaderDAC	Intro_DAC1
	sHeaderFM	Intro_FM1, $00+12, $00
	sHeaderFM	Intro_FM2, $00, $13
	sHeaderFM	Intro_FM3, $00, $13
	sHeaderFM	Intro_FM4, $00, $13
	sHeaderFM	Intro_FM5, $00, $13

Intro_DAC1:
	sPan		spCenter
	dc.b dKick, $06, dSnare, $06, dKick, $06, dSnare, $06
	dc.b dKick, $06, dSnare, $06, dKick, $03, dSnare, $02
	dc.b dSnare, $01, dSnare, $03, dSnare, $03, dKick, $06
	dc.b dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $06, dKick, $03, dSnare, $03, dSnare, $06
	dc.b dSnare, $03, dKick, $09, dKick, $06, dSnare, $36
	sPan		spCenter
	dc.b nRst, $01
	sPan		spCenter
	sStop

Intro_FM1:
	sPan		spCenter
	sPatFM		$00
	dc.b nRst, $30, nB1, $06, nB1, $06, nA1, $06
	dc.b nA1, $06, nG1, $06, nG1, $03, nF1, $03
	dc.b nRst, $06, nG1, $06, nB1, $06, nB1, $06
	dc.b nA1, $06, nA1, $06, nG1, $03, nRst, $03
	dc.b nG1, $03, nD2, $0F, nB1, $06, nB0, $06
	dc.b nA1, $06, nA0, $06, nRst, $03, nB0, $06
	dc.b nRst, $03, nB0, $06, nB0, $36
	sPan		spCenter
	sPatFM		$00
	dc.b nRst, $01
	sPan		spCenter
	sPatFM		$00
	sStop

Intro_FM2:
	sPan		spCenter
	sPatFM		$03
	dc.b nRst, $30, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $03, nA3, $03, nRst, $03, nA3, $03
	dc.b nRst, $03, nG3, $03, nRst, $06, nF3, $0F
	dc.b nB3, $03, nRst, $03, nB3, $03, nRst, $03
	dc.b nA3, $03, nRst, $03, nA3, $03, nRst, $03
	dc.b nG3, $03, nRst, $06, nD4, $0F, nB3, $03
	dc.b nRst, $09, nA3, $03, nRst, $0C, nB3, $03
	dc.b nRst, $06, nB3, $03, nRst, $39
	sPan		spCenter
	sPatFM		$03
	dc.b $01
	sPan		spCenter
	sPatFM		$03
	sStop

Intro_FM3:
	sPan		spCenter
	sPatFM		$03
	dc.b nRst, $30, nFs4, $03, nRst, $03, nFs4, $03
	dc.b nRst, $03, nE4, $03, nRst, $03, nE4, $03
	dc.b nRst, $03, nD4, $03, nRst, $06, nC4, $0F
	dc.b nFs4, $03, nRst, $03, nFs4, $03, nRst, $03
	dc.b nE4, $03, nRst, $03, nE4, $03, nRst, $03
	dc.b nD4, $03, nRst, $06, nA4, $0F, nFs4, $03
	dc.b nRst, $09, nE4, $03, nRst, $0C, nFs4, $03
	dc.b nRst, $06, nFs4, $03, nRst, $39
	sPan		spCenter
	sPatFM		$03
	dc.b $01
	sPan		spCenter
	sPatFM		$03
	sStop

Intro_FM4:
	sPan		spCenter
	sPatFM		$02
	dc.b nRst, $30, nB4, $03, nRst, $03, nB4, $03
	dc.b nRst, $03, nA4, $03, nRst, $03, nA4, $03
	dc.b nRst, $03, nG4, $03, nRst, $06, nF4, $0F
	dc.b nB4, $03, nRst, $03, nB4, $03, nRst, $03
	dc.b nA4, $03, nRst, $03, nA4, $03, nRst, $03
	dc.b nD5, $03, nRst, $06, nD5, $0F, nB4, $06
	dc.b nA4, $03, nRst, $03, nD5, $03, nRst, $03
	dc.b nB4, $06, nRst, $03, nB4, $06, nRst, $03
	dc.b nB4, $03, nRst, $39
	sPan		spCenter
	sPatFM		$02
	dc.b $01
	sPan		spCenter
	sPatFM		$02
	sStop

Intro_FM5:
	sPan		spCenter
	sModOff
	sModOff
	sModOff
	sModOff
	sPatFM		$00
	sModOff
	dc.b nRst, $30
	sModOff
	sPatFM		$01
	dc.b nB4, $03, nRst, $03, nB4, $03, nRst, $03
	dc.b nA4, $03, nRst, $03, nA4, $03, nRst, $03
	dc.b nG4, $03, nRst, $06, nF4, $09
	sPatFM		$04
	dc.b nB4, $06
	sPatFM		$01
	dc.b nB4, $03, nRst, $03, nB4, $03, nRst, $03
	dc.b nA4, $03, nRst, $03, nA4, $03, nRst, $03
	dc.b nD5, $03, nRst, $06, nD5, $09
	sPatFM		$04
	dc.b nB4, $06
	sPatFM		$01
	dc.b nB4, $06, nA4, $03, nRst, $03, nD5, $03
	dc.b nRst, $03, nB4, $06, nRst, $03, nB4, $06
	dc.b nRst, $03, nB4, $03, nRst, $03
	sPatFM		$00
	ssDetune	$FF
	ssMod68k	$00, $01, $07, $04
	dc.b nB0, $36
	sPan		spCenter
	ssDetune	$00
	sPatFM		$00
	sModOn
	dc.b nRst, $01
	sModOff
	sPan		spCenter
	sPatFM		$00
	sModOn
	sStop

Intro_Patches:

	; Patch $00
	; $28
	; $71, $00, $30, $01,	$1F, $1F, $1D, $1F
	; $13, $13, $06, $05,	$03, $03, $02, $05
	; $4F, $4F, $2F, $3F,	$0E, $14, $1E, $0A
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1D, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $06, $13, $05
	spSustainLv	$04, $02, $04, $03
	spDecayRt	$03, $02, $03, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $1E, $14, $0A

	; Patch $01
	; $2C
	; $22, $04, $02, $14,	$51, $52, $50, $52
	; $0D, $00, $06, $04,	$03, $05, $02, $00
	; $16, $18, $26, $18,	$0F, $17, $12, $17
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$02, $00, $00, $01
	spMultiple	$02, $02, $04, $04
	spRateScale	$01, $01, $01, $01
	spAttackRt	$11, $10, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $06, $00, $04
	spSustainLv	$01, $02, $01, $01
	spDecayRt	$03, $02, $05, $00
	spReleaseRt	$06, $06, $08, $08
	spTotalLv	$0F, $12, $17, $17

	; Patch $02
	; $38
	; $75, $13, $71, $11,	$D1, $52, $14, $14
	; $0A, $07, $01, $01,	$00, $00, $00, $00
	; $F0, $F0, $F0, $FC,	$1E, $1E, $1E, $00
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$05, $01, $03, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$11, $14, $12, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $01, $07, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0C
	spTotalLv	$1E, $1E, $1E, $00

	; Patch $03
	; $3A
	; $01, $07, $31, $71,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $06,	$00, $00, $00, $00
	; $1F, $FF, $1F, $2F,	$18, $28, $27, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $03, $00, $07
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $06
	spSustainLv	$01, $01, $0F, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $04
	; $05
	; $2E, $17, $1F, $1F,	$1F, $1F, $1F, $1F
	; $00, $0B, $08, $08,	$00, $08, $08, $08
	; $00, $19, $19, $19,	$28, $11, $10, $10
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$02, $01, $01, $01
	spMultiple	$0E, $0F, $07, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $08, $0B, $08
	spSustainLv	$00, $01, $01, $01
	spDecayRt	$00, $08, $08, $08
	spReleaseRt	$00, $09, $09, $09
	spTotalLv	$28, $10, $11, $10
