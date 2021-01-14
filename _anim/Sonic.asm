; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonAni_Walk-SonicAniData
		dc.w SonAni_Run-SonicAniData
		dc.w SonAni_Roll-SonicAniData
		dc.w SonAni_Roll2-SonicAniData
		dc.w SonAni_Push-SonicAniData
		dc.w SonAni_Wait-SonicAniData
		dc.w SonAni_Balance-SonicAniData
		dc.w SonAni_LookUp-SonicAniData
		dc.w SonAni_Duck-SonicAniData
		dc.w SonAni_Warp1-SonicAniData
		dc.w SonAni_Warp2-SonicAniData
		dc.w SonAni_Warp3-SonicAniData
		dc.w SonAni_Warp4-SonicAniData
		dc.w SonAni_Stop-SonicAniData
		dc.w SonAni_Float1-SonicAniData
		dc.w SonAni_Float2-SonicAniData
		dc.w SonAni_Spring-SonicAniData
		dc.w SonAni_LZHang-SonicAniData
		dc.w SonAni_Leap1-SonicAniData
		dc.w SonAni_Leap2-SonicAniData
		dc.w SonAni_Surf-SonicAniData
		dc.w SonAni_Bubble-SonicAniData
		dc.w SonAni_Death1-SonicAniData
		dc.w SonAni_Drown-SonicAniData
		dc.w SonAni_Death2-SonicAniData
		dc.w SonAni_Shrink-SonicAniData
		dc.w SonAni_Hurt-SonicAniData
		dc.w SonAni_LZSlide-SonicAniData
		dc.w SonAni_Blank-SonicAniData
		dc.w SonAni_Float3-SonicAniData
		dc.w SonAni_Float4-SonicAniData
    		dc.w SonAni_Spindash-SonicAniData	;1F

SonAni_Walk:	dc.b $FF,   7,   8,   1,   2,   3,   4,   5,   6, $FF
SonAni_Run:	dc.b $FF, $21, $22, $23, $24, $FF, $FF, $FF, $FF, $FF
SonAni_Roll:	dc.b $FE, $96, $97, $96, $98, $96, $99, $96, $9A, $FF
SonAni_Roll2:	dc.b $FE, $96, $97, $96, $98, $96, $99, $96, $9A, $FF
SonAni_Push:	dc.b $FD, $B6, $B7, $B8, $B9, $FF, $FF, $FF, $FF, $FF
SonAni_Wait:	dc.b    5, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD, $AD, $AD, $AE, $AE, $AE, $AE
		dc.b  $AE, $AE, $AF, $D9, $D9, $D9, $D9, $D9, $D9, $AF, $AF, $FE, $35
SonAni_Balance:	dc.b    7, $A4, $A5, $A6, $FF
SonAni_LookUp:	dc.b 5, $C3, $C4, $FE,   1
SonAni_Duck:	dc.b 5, $9B, $9C, $FE,   1
SonAni_Warp1:	dc.b $3F, $33, $FF, 0
SonAni_Warp2:	dc.b $3F, $34, $FF, 0
SonAni_Warp3:	dc.b $3F, $35, $FF, 0
SonAni_Warp4:	dc.b $3F, $36, $FF, 0
SonAni_Stop:	dc.b 3, $9D, $9E, $9F, $A0, $FD,   0
SonAni_Float1:	dc.b 7, $C8, $FF
SonAni_Float2:	dc.b 7, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $CF, $FF
SonAni_Spring:	dc.b $2F, $8E, $FD, 0
SonAni_LZHang:	dc.b 1, $AA, $AB, $FF
SonAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SonAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SonAni_Surf:	dc.b $3F, $49, $FF, 0
SonAni_Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SonAni_Death1:	dc.b $20, $4B, $FF, 0
SonAni_Drown:	dc.b $2F, $4C, $FF, 0
SonAni_Death2:	dc.b 3,	$4D, $FF, 0
SonAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SonAni_Hurt:	dc.b 3,	$55, $FF, 0
SonAni_LZSlide:	dc.b 7, $55, $57, $FF
SonAni_Blank:	dc.b $77, 0, $FD, 0
SonAni_Float3:	dc.b  $B, $90, $91, $92, $91, $FF
SonAni_Float4:	dc.b $B, $90, $91, $92, $91, $FD,   0
SonAni_Spindash:	dc.b 0, $86, $87, $86, $88, $86, $89, $86, $8A, $86, $8B, $FF

		even