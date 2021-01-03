Waterfall_Header:
	sHeaderInit
	sHeaderPatch	Waterfall_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, Waterfall_FM4, $00, $0C

Waterfall_FM4:
	sPatFM		$00
	dc.b nG6, $02

Waterfall_Loop1:
	dc.b sHold, $01
	sLoop		$00, $40, Waterfall_Loop1

Waterfall_Loop2:
	dc.b sHold, $01
	saVolFM		$01
	sLoop		$00, $22, Waterfall_Loop2
	dc.b nRst, $01
	sStopSpecFM4

Waterfall_Patches:

	; Patch $00
	; $38
	; $0F, $0F, $0F, $0F,	$1F, $1F, $1F, $0E
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $1F,	$00, $00, $00, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $0F, $0F, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
