; ---------------------------------------------------------------------------
; Align and pad
; input: length to align to, value to use as padding (default is 0)
; ---------------------------------------------------------------------------

align:	macro
	if (narg=1)
	dcb.b \1-(*%\1),0
	else
	dcb.b \1-(*%\1),\2
	endc
	endm

; ---------------------------------------------------------------------------
; DMA fill VRAM with a value
; input: value, length, destination
; ---------------------------------------------------------------------------

fillVRAM:	macro value,length,loc
		lea	($C00004).l,a5
		move.w	#$8F01,(a5)
		move.l	#$94000000+((length&$FF00)<<8)+$9300+(length&$FF),(a5)
		move.w	#$9780,(a5)
		move.l	#$40000080+((loc&$3FFF)<<16)+((loc&$C000)>>14),(a5)
		move.w	#value,($C00000).l
		endm

; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------

stopZ80:	macro
		move.w	#$100,($A11100).l
	.wait:	btst	#0,($A11100).l
		bne.s	.wait
		endm

; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------

startZ80:	macro
		move.w	#0,($A11100).l
		endm

; ---------------------------------------------------------------------------
; bankswitch between SRAM and ROM
; (remember to enable SRAM in the header first!)
; ---------------------------------------------------------------------------

gotoSRAM:	macro
		move.b  #1,($A130F1).l
		endm

gotoROM:	macro
		move.b  #0,($A130F1).l
		endm
		
; ---------------------------------------------------------------------------
; disable interrupts
; ---------------------------------------------------------------------------

disable_ints:	macro
		move	#$2700,sr
		endm

; ---------------------------------------------------------------------------
; enable interrupts
; ---------------------------------------------------------------------------

enable_ints:	macro
		move	#$2300,sr
		endm
	
waitvblank:	macro
		move	#$2300,sr

.wait\@:
		tst.b	($FFFFF62A).w
		bne.s	.wait\@
		endm

; ---------------------------------------------------------------------------
; long conditional jumps
; ---------------------------------------------------------------------------

jhi:		macro loc
		bls.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jcc:		macro loc
		bcs.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jhs:		macro loc
		jcc	loc
		endm

jls:		macro loc
		bhi.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jcs:		macro loc
		bcc.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jlo:		macro loc
		jcs	loc
		endm

jeq:		macro loc
		bne.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jne:		macro loc
		beq.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jgt:		macro loc
		ble.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jge:		macro loc
		blt.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jle:		macro loc
		bgt.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jlt:		macro loc
		bge.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jpl:		macro loc
		bmi.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm

jmi:		macro loc
		bpl.s	.nojump\@
		jmp	loc
	.nojump\@:
		endm