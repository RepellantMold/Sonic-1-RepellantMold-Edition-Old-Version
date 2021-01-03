FastRoll_Header:
	sHeaderInit
	sHeaderPatch	FastRoll_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, FastRoll_FM5, $0C, $05

FastRoll_FM5:
	sPatFM		$00
	dc.b nRst, $01
	ssMod68k	$03, $01, $09, $FF
	dc.b nBb5, $5A
	sModOff

FastRoll_Loop1:
	dc.b sHold
	saVolFM		$01
	dc.b nG6, $02
	sLoop		$00, $2A, FastRoll_Loop1
	sStop

FastRoll_Patches:

	; Patch $00
	; $3C
	; $00, $44, $02, $02,	$1F, $1F, $1F, $15
	; $00, $1F, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$0D, $00, $28, $00
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $04, $00
	spMultiple	$00, $02, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $1F, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0D, $28, $00, $00
