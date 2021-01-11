; Equates from plutiedev.com
VDPREG_MODE1:     equ $8000  ; Mode register #1
VDPREG_MODE2:     equ $8100  ; Mode register #2
VDPREG_MODE3:     equ $8B00  ; Mode register #3
VDPREG_MODE4:     equ $8C00  ; Mode register #4

VDPREG_PLANEA:    equ $8200  ; Plane A table address
VDPREG_PLANEB:    equ $8400  ; Plane B table address
VDPREG_SPRITE:    equ $8500  ; Sprite table address
VDPREG_WINDOW:    equ $8300  ; Window table address
VDPREG_HSCROLL:   equ $8D00  ; HScroll table address

VDPREG_SIZE:      equ $9000  ; Plane A and B size
VDPREG_WINX:      equ $9100  ; Window X split position
VDPREG_WINY:      equ $9200  ; Window Y split position
VDPREG_INCR:      equ $8F00  ; Autoincrement
VDPREG_BGCOL:     equ $8700  ; Background color
VDPREG_HRATE:     equ $8A00  ; HBlank interrupt rate

VDPREG_DMALEN_L:  equ $9300  ; DMA length (low)
VDPREG_DMALEN_H:  equ $9400  ; DMA length (high)
VDPREG_DMASRC_L:  equ $9500  ; DMA source (low)
VDPREG_DMASRC_M:  equ $9600  ; DMA source (mid)
VDPREG_DMASRC_H:  equ $9700  ; DMA source (high)

GFXMODE_256x224:      equ %00000000
GFXMODE_320x224:      equ %10000001
GFXMODE_256x448:      equ %00000110
GFXMODE_320x448:      equ %10000111
GFXMODE_256x224_SH:   equ %00001000
GFXMODE_320x224_SH:   equ %10001001
GFXMODE_256x448_SH:   equ %00001110
GFXMODE_320x448_SH:   equ %10001111

VdpCtrl:    equ $C00004  ; VDP control port
VdpData:    equ $C00000  ; VDP data port
HvCounter:  equ $C00008  ; H/V counter

VRAM_ADDR_CMD:  equ $40000000
CRAM_ADDR_CMD:  equ $C0000000
VSRAM_ADDR_CMD: equ $40000010

VRAM_DMA_CMD:   equ $40000080
CRAM_DMA_CMD:   equ $C0000080
VSRAM_DMA_CMD:  equ $40000090

VRAM_SIZE:    equ 65536
CRAM_SIZE:    equ 128
VSRAM_SIZE:   equ 80

NOFLIP:  equ $0000  ; Don't flip
HFLIP:   equ $0800  ; Flip horizontally
VFLIP:   equ $1000  ; Flip vertically
HVFLIP:  equ $1800  ; Flip both ways

VRAM_PAL0:    equ $0000  ; 1st palette
VRAM_PAL1:    equ $2000  ; 2nd palette
VRAM_PAL2:    equ $4000  ; 3rd palette
VRAM_PAL3:    equ $6000  ; 4th palette

LOPRI:   equ $0000  ; Low priority
HIPRI:   equ $8000  ; High priority

IoCtrl1:      equ $A10009  ; I/O control port 1P
IoCtrl2:      equ $A1000B  ; I/O control port 2P
IoCtrlExt:    equ $A1000D  ; I/O control port modem
IoData1:      equ $A10003  ; I/O data port 1P
IoData2:      equ $A10005  ; I/O data port 2P
IoDataExt:    equ $A10007  ; I/O data port modem

Z80Ram:     equ $A00000  ; Where Z80 RAM starts
Z80BusReq:  equ $A11100  ; Z80 bus request line
Z80Reset:   equ $A11200  ; Z80 reset line

; VRAM data
vram_fg:	equ $C000	; foreground namespace
vram_bg:	equ $E000	; background namespace
vram_sonic:	equ $F000	; Sonic graphics
vram_sprites:	equ $F800	; sprite table
vram_hscroll:	equ $FC00	; horizontal scroll table

PLCQueueAdr: =  $FFFFF650   ; beginning of RAM allocated for PLC
PLCQueue: = PLCQueueAdr+4   ; start of PLC queue
PLCQueueEnd: =  $FFFFF700-$20   ; end of PLC queue, start of equates for PLC, for example last state of Nemesis decompression
Saved_music: =	$FFFFFFFF
v_hscrolltablebuffer:	equ $FFFFCC00 ; scrolling table data (actually $380 bytes, but $400 is reserved for it)
v_spritetablebuffer:	equ $FFFFF800 ; sprite table ($280 bytes, last $80 bytes are overwritten by v_pal_water_dup)
Water_palette_dup:		equ 	$FFFFFA00 		; $80 bytes - duplicate underwater palette, used for transitions
Water_palette:			equ 	Water_palette_dup+$80	; $80 bytes - main underwater palette ($FFFFFA80, listed like this in case of RAM shifting)
Normal_palette:			equ	$FFFFFB00               ; 32 bytes
Normal_palette_line2:		equ	Normal_palette+$20	; 32 bytes - $FFFFFB20, listed like this in case of RAM shifting
Normal_palette_line3:		equ	Normal_palette_line2+$20; 32 bytes - $FFFFFB40, listed like this in case of RAM shifting
Normal_palette_line4:		equ	Normal_palette_line3+$20; 32 bytes - $FFFFFB60, listed like this in case of RAM shifting
Second_palette:			equ	Normal_palette_line4+$20; 32 bytes - $FFFFFB80, listed like this in case of RAM shifting
Second_palette_line2:		equ	Second_palette+$20	; 32 bytes - $FFFFFBA0, listed like this in case of RAM shifting
Second_palette_line3:		equ	Second_palette_line2+$20; 32 bytes - $FFFFFBC0, listed like this in case of RAM shifting
Second_palette_line4:		equ	Second_palette_line3+$20; 32 bytes - $FFFFFBE0, listed like this in case of RAM shifting