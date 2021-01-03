Credits_Mappings:
		dc.l	EniCred_0	; credit id = 0
		dc.l	EniCred_1	; credit id = 1
		dc.l	EniCred_2	; credit id = 2
		dc.l	EniCred_3	; credit id = 3
		dc.l	EniCred_4	; credit id = 4
		dc.l	EniCred_5	; credit id = 5
		dc.l	EniCred_6	; credit id = 6
		dc.l	EniCred_7	; credit id = 7
		dc.l	EniCred_8	; credit id = 8
		dc.l	EniCred_9	; credit id = 9

Credits_MapLoad:
		move.b	($FFFFFFF4).w,d0
		add.b	d0,d0
		add.b	d0,d0
		movea.l	Credits_Mappings(pc,d0.w),a0
		lea	($FF0000).l,a1
		moveq	#0,d0		; location of art in VRAM
		jsr	EniDec
		move.l	#$40000003,d0
		moveq	#40-1,d1	 ; X size = 40
		moveq	#28-1,d2	 ; Y size = 28
		jmp	ShowVDPGraphics