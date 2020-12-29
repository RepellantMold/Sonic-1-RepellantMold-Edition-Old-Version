CDBossUS_Header:
	sHeaderInit
	sHeaderPatch	CDBossUS_Patches
	sHeaderCh	$07, $02
	sHeaderTempo	$02, $40
	sHeaderDAC	CDBossUS_DAC, $00, $16
	sHeaderFM	CDBossUS_FM1, $00, $11
	sHeaderFM	CDBossUS_FM2, $0C, $0F
	sHeaderFM	CDBossUS_FM3, $0C, $16
	sHeaderFM	CDBossUS_FM4, $0C, $0F
	sHeaderFM	CDBossUS_FM5, $0C, $2F
	sHeaderFM	CDBossUS_FM6, $0C, $1F
	sHeaderPSG	CDBossUS_PSG1, $00, $08, $00, v0A
	sHeaderPSG	CDBossUS_PSG2, $00, $08, $00, v0A

CDBossUS_FM1:
CDBossUS_Jump1:
	dc.b nRst, $60
	sPatFM		$05

CDBossUS_Loop1:
	dc.b nD4, $03, nF4, nE4, nG4, nE4, nF4, nD4
	dc.b nG4, nE4, nF4, nE4, nG4, nE4, nF4, nD4
	dc.b nG4
	sLoop		$00, $0D, CDBossUS_Loop1
	dc.b nD4, nF4, nE4, nG4, nE4, nF4, nD4, nG4
	dc.b nE4, nF4, nE4, nG4, nA4, nB4, nC5

CDBossUS_Loop2:
	dc.b nCs5, nAb4, nB4, nBb4, nCs5, nBb4, nB4, nAb4
	dc.b nCs5, nBb4, nB4, nBb4, nCs5, nBb4, nB4, nAb4
	sLoop		$00, $02, CDBossUS_Loop2
	dc.b nCs5

CDBossUS_Loop3:
	dc.b nFs4, nA4, nAb4, nB4, nAb4, nA4, nFs4, nB4
	dc.b nAb4, nA4, nAb4, nB4, nAb4, nA4, nFs4, nB4
	sLoop		$00, $02, CDBossUS_Loop3

CDBossUS_Loop4:
	dc.b nC4, nEb4, nD4, nF4, nD4, nEb4, nC4, nF4
	dc.b nD4, nEb4, nD4, nF4, nD4, nEb4, nC4, nF4
	sLoop		$00, $0C, CDBossUS_Loop4
	sPatFM		$08
	dc.b nD0, $7F, sHold, $41
	sJump		CDBossUS_Jump1
	
CDBossUS_FM6:
	dc.b nRst, $0B

CDBossUS_FM2:
	sPan		spRight

CDBossUS_Jump2:
	dc.b nRst, $7F, $11    
	sPatFM		$04

CDBossUS_Loop5:
	dc.b nD2, $03, nRst, $06, nG2, $03, nRst, $06
	dc.b nF2, $03, nRst, nA2, nRst, $06, nF2, $03
	dc.b nD2, nRst, $09
	sLoop		$00, $0D, CDBossUS_Loop5

CDBossUS_Loop6:
	dc.b nAb2, $03, nRst, $06, nCs3, $03, nRst, $06
	dc.b nB2, $03, nRst, nEb3, nRst, $06, nB2, $03
	dc.b nAb2, nRst, $09
	sLoop		$00, $02, CDBossUS_Loop6

CDBossUS_Loop7:
	dc.b nFs2, $03, nRst, $06, nB2, $03, nRst, $06
	dc.b nA2, $03, nRst, nCs3, nRst, $06, nA2, $03
	dc.b nFs2, nRst, $09
	sLoop		$00, $02, CDBossUS_Loop7

CDBossUS_Loop8:
	dc.b nC2, $03, nRst, $06, nF2, $03, nRst, $06
	dc.b nEb2, $03, nRst, nG2, nRst, $06, nEb2, $03
	dc.b nC2, nRst, $09
	sLoop		$00, $0C, CDBossUS_Loop8
	sPatFM		$08
	dc.b $09, nD1, $7F, sHold, $38
	sJump		CDBossUS_Jump2

CDBossUS_FM3:
CDBossUS_Jump3:
	dc.b nRst, $7F, $41

CDBossUS_Loop9:
	sPatFM		$04
	dc.b nD1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nG1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nG1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nG1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nG1, $02, nRst, $01
	sLoop		$00, $03, CDBossUS_Loop9
	dc.b nD1, $02

CDBossUS_Loop10:
	dc.b nRst, $01, nF1, $02, nRst, $01, nE1, $02
	sLoop		$00, $02, CDBossUS_Loop10
	dc.b nRst, $01, nF1, $02, nRst, $01, nD1, $02
	dc.b nRst, $01, nF1, $02, nRst, $01, nC2, $02
	dc.b nRst, $01, nE1, $02, nRst, $01, nF1, $02
	dc.b nRst, $01, nE1, $02, nRst, $01, nC1, $08
	dc.b nRst, $04
	sLoop		$01, $02, CDBossUS_Loop9

CDBossUS_Loop11:
	dc.b nD1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nG1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nG1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nG1, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nG1, $02, nRst, $01
	sLoop		$00, $04, CDBossUS_Loop11

CDBossUS_Loop12:
	dc.b nAb1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nCs2, $02, nRst, $01
	sLoop		$00, $02, CDBossUS_Loop12

CDBossUS_Loop13:
	dc.b nFs1, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nFs1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nB1, $02, nRst, $01
	dc.b nAb1, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nFs1, $02, nRst, $01, nB1, $02, nRst, $01
	sLoop		$00, $02, CDBossUS_Loop13

CDBossUS_Loop14:
	dc.b nC1, $02, nRst, $01, nEb1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nEb1, $02, nRst, $01
	dc.b nC1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nEb1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nF1, $02, nRst, $01
	dc.b nD1, $02, nRst, $01, nEb1, $02, nRst, $01
	dc.b nC1, $02, nRst, $01, nF1, $02, nRst, $01
	sLoop		$00, $03, CDBossUS_Loop14
	dc.b nC1, $02

CDBossUS_Loop15:
	dc.b nRst, $01, nEb1, $02, nRst, $01, nD1, $02
	sLoop		$00, $02, CDBossUS_Loop15
	dc.b nRst, $01, nEb1, $02, nRst, $01, nC1, $02
	dc.b nRst, $01, nEb1, $02, nRst, $01, nBb1, $02
	dc.b nRst, $01, nD1, $02, nRst, $01, nEb1, $02
	dc.b nRst, $01, nD1, $02, nRst, $01, nBb0, $08
	dc.b nRst, $04
	sLoop		$01, $03, CDBossUS_Loop14
	dc.b nD2, $7F, sHold, $41
	sJump		CDBossUS_Jump3

CDBossUS_FM4:
	sPan		spLeft

CDBossUS_Jump4:
	sPatFM		$03
	sNoteTimeOut		$05
	dc.b nRst, $7F, $7F, $52, nD2, $02

CDBossUS_Loop16:
	dc.b nRst, $01, nF2, $02, nRst, $01, nE2, $02
	sLoop		$00, $02, CDBossUS_Loop16
	dc.b nRst, $01, nF2, $02, nRst, $01, nD2, $02
	dc.b nRst, $01, nF2, $02, nRst, $01, nC3, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nF2, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nC2, $08
	dc.b nRst, $7F, $15, nD2, $02

CDBossUS_Loop17:
	dc.b nRst, $01, nF2, $02, nRst, $01, nE2, $02
	sLoop		$00, $02, CDBossUS_Loop17
	dc.b nRst, $01, nF2, $02, nRst, $01, nD2, $02
	dc.b nRst, $01, nF2, $02, nRst, $01, nC3, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nF2, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nC2, $08
	dc.b nRst

CDBossUS_Loop18:
	dc.b $4C
	sLoop		$00, $07, CDBossUS_Loop18

CDBossUS_Loop20:
	dc.b nC2, $02

CDBossUS_Loop19:
	dc.b nRst, $01, nEb2, $02, nRst, $01, nD2, $02
	sLoop		$00, $02, CDBossUS_Loop19
	dc.b nRst, $01, nEb2, $02, nRst, $01, nC2, $02
	dc.b nRst, $01, nEb2, $02, nRst, $01, nBb2, $02
	dc.b nRst, $01, nD2, $02, nRst, $01, nEb2, $02
	dc.b nRst, $01, nD2, $02, nRst, $01, nBb1, $08
	dc.b nRst, $7F, $15
	sLoop		$01, $02, CDBossUS_Loop20
	dc.b nC2, $02

CDBossUS_Loop21:
	dc.b nRst, $01, nEb2, $02, nRst, $01, nD2, $02
	sLoop		$00, $02, CDBossUS_Loop21
	dc.b nRst, $01, nEb2, $02, nRst, $01, nC2, $02
	dc.b nRst, $01, nEb2, $02, nRst, $01, nBb2, $02
	dc.b nRst, $01, nD2, $02, nRst, $01, nEb2, $02
	dc.b nRst, $01, nD2, $02, nRst, $01, nBb1, $08
	dc.b nRst, $04
	sPatFM		$08
	sNoteTimeOut		$00
	dc.b $06, nD1, $7F, sHold, $3B
	sJump		CDBossUS_Jump4

CDBossUS_FM5:
	sPatFM		$08
	saVolFM		$1C

CDBossUS_Jump5:
	dc.b nRst, $30, nF4

CDBossUS_Loop22:
	dc.b $78, sHold
	sLoop		$00, $05, CDBossUS_Loop22
	dc.b $78
	saVolFM		$E4
	dc.b nEb6, $60, nD6, nC6
	saVolFM		$1C
	dc.b nEb4, $7F, sHold, $7F, sHold, $7F, sHold, $63
	saVolFM		$E4
	dc.b nD1, $7F, sHold, $41
	saVolFM		$1C
	sJump		CDBossUS_Jump5

CDBossUS_PSG1:
	ssMod68k	$00, $02, $02, $02

CDBossUS_Jump6:
	dc.b nA0, $0C, nF1, $54

CDBossUS_Loop23:
	dc.b $60
	sLoop		$00, $07, CDBossUS_Loop23
	dc.b nBb0, nA0, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1
	dc.b nRst, $7F, $41
	sJump		CDBossUS_Jump6

CDBossUS_PSG2:
	ssMod68k	$00, $02, $02, $02

CDBossUS_Jump7:
	dc.b nRst, $15, nA1, $4B

CDBossUS_Loop24:
	dc.b $60
	sLoop		$00, $07, CDBossUS_Loop24
	dc.b nEb1, nD1, nG1, nG1, nG1, nG1, nG1, nG1
	dc.b nRst, $7F, $41
	sJump		CDBossUS_Jump7

CDBossUS_DAC:
	sStop

CDBossUS_Patches:
	; Patch $00
	; $01
	; $02, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $10, $18, $18, $10,	$0E, $00, $00, $08
	; $FF, $FF, $FF, $0F,	$12, $10, $10, $80
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $18, $18, $10
	spSustainLv	$0F, $0F, $0F, $00
	spDecayRt	$0E, $00, $00, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$12, $10, $10, $00

	; Patch $01
	; $05
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $12, $0C, $0C, $0C,	$12, $18, $1F, $1F
	; $1F, $1F, $1F, $1F,	$07, $86, $86, $86
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0C, $0C, $0C
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$12, $1F, $18, $1F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$07, $06, $06, $06

	; Patch $02
	; $3C
	; $00, $00, $F0, $F1,	$1F, $1F, $17, $1F
	; $1F, $1F, $14, $1F,	$09, $11, $3A, $1D
	; $02, $0F, $9F, $7F,	$03, $80, $02, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $0F, $00, $0F
	spMultiple	$00, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $17, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $14, $1F, $1F
	spSustainLv	$00, $09, $00, $07
	spDecayRt	$09, $3A, $11, $1D
	spReleaseRt	$02, $0F, $0F, $0F
	spTotalLv	$03, $02, $00, $00

	; Patch $03
	; $3C
	; $22, $00, $01, $10,	$12, $13, $12, $12
	; $00, $00, $00, $10,	$00, $00, $00, $00
	; $0F, $0F, $0F, $3F,	$23, $90, $1E, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$02, $00, $00, $01
	spMultiple	$02, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $12, $13, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $10
	spSustainLv	$00, $00, $00, $03
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $1E, $10, $00

	; Patch $04
	; $00
	; $00, $03, $02, $00,	$D9, $DF, $1F, $1F
	; $12, $11, $14, $0C,	$0A, $00, $0A, $02
	; $FF, $FF, $FF, $FF,	$22, $07, $27, $85
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $03, $00
	spRateScale	$03, $00, $03, $00
	spAttackRt	$19, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $14, $11, $0C
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$0A, $0A, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $27, $07, $05

	; Patch $05
	; $3C
	; $36, $31, $76, $72,	$94, $9F, $96, $9F
	; $12, $00, $14, $0F,	$04, $0A, $04, $0D
	; $2F, $0F, $4F, $2F,	$33, $80, $1A, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$06, $06, $01, $02
	spRateScale	$02, $02, $02, $02
	spAttackRt	$14, $16, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $14, $00, $0F
	spSustainLv	$02, $04, $00, $02
	spDecayRt	$04, $04, $0A, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $1A, $00, $00

	; Patch $06
	; $3A
	; $01, $07, $31, $71,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $03, $00, $07
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $07
	; $01
	; $DF, $09, $03, $09,	$10, $1F, $1F, $1F
	; $09, $00, $00, $0E,	$00, $00, $00, $13
	; $15, $05, $05, $3A,	$0C, $08, $0C, $80
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$0D, $00, $00, $00
	spMultiple	$0F, $03, $09, $09
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0E
	spSustainLv	$01, $00, $00, $03
	spDecayRt	$00, $00, $00, $13
	spReleaseRt	$05, $05, $05, $0A
	spTotalLv	$0C, $0C, $08, $00
	
	; Patch $08
	; $3D
	; $01, $02, $02, $02,	$1F, $08, $8A, $0A
	; $08, $08, $08, $08,	$00, $01, $00, $00
	; $0F, $1F, $1F, $1F,	$1F, $88, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $0A, $08, $0A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$00, $01, $01, $01
	spDecayRt	$00, $00, $01, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $08, $08, $07