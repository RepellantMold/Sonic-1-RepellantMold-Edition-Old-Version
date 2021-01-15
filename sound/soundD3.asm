Jump2_Header:
	sHeaderInit
	sHeaderPatch	Jump2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $80, Jump2_PSG1, $F4, $00

Jump2_PSG1:
	sVolEnvPSG	v00
	dc.b nE2, $05
	ssMod68k	$02, $01, $F7, $65
	dc.b nC3, $15
	sStop

Jump2_Patches:
