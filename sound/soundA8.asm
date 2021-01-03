Goal_Header:
	sHeaderInit
	sHeaderPatch	Goal_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, Goal_FM4, $F2, $04

Goal_FM4:
	sPatFM		$00
	dc.b nBb3

Goal_Loop1:
	dc.b $02, sHold, nAb3, $01, sHold, $01, sHold
	saTranspose	1
	sLoop		$00, $30, Goal_Loop1
	sStop

Goal_Patches:

	; Patch $00
	; $3B
	; $3C, $39, $30, $31,	$DF, $1F, $1F, $DF
	; $04, $05, $04, $01,	$04, $04, $04, $02
	; $FF, $0F, $1F, $AF,	$29, $20, $0F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $03, $03, $03
	spMultiple	$0C, $00, $09, $01
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $05, $01
	spSustainLv	$0F, $01, $00, $0A
	spDecayRt	$04, $04, $04, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $0F, $20, $00
	even
