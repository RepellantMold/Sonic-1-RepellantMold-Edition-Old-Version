Saw_Header:
	sHeaderInit
	sHeaderPatch	Saw_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $02, Saw_FM3, $00, $11+5
	sHeaderSFX	$80, $04, Saw_FM4, $00, $11+5
	sHeaderSFX	$80, $05, Saw_FM5, $00, $11+5
	
Saw_FM5:
	ssDetune	5
	sJump		Saw_Jump1

Saw_FM4:
	ssDetune	-5

Saw_FM3:
Saw_Jump1:
	sPatFM		$00
	ssMod68k	$05, $01, $19, $73
	dc.b nB2, $7A
	sStop

Saw_Patches:

	; Patch $00
	; $C4
	; $02, $02, $02, $02,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$00, $00, $00, $00
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
