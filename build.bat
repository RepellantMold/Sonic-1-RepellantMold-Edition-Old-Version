@echo off
"FW_KENSC/compcmp.exe" artnem_u/8x8ghz.bin artcomp/8x8ghz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8lz.bin artcomp/8x8lz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8mz.bin artcomp/8x8mz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8sbz.bin artcomp/8x8sbz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8slz.bin artcomp/8x8slz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8syz.bin artcomp/8x8syz.bin
TwizMod.exe arttwim/8x8title.bin
Twizzler.exe map16/TS.unc
Twizzler.exe map256/TS.unc
TwizMod.exe arttwim/titlefor.bin
TwizMod.exe arttwim/titleson.bin
TwizMod.exe arttwim/titletm.bin
TwizMod.exe arttwim/segalogo.bin
TwizMod.exe arttwim/japcreds.bin
Twizzler.exe mapeni/japcreds.unc
asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /o l+ /p /o ae- sonic1.asm, s1built.bin , ,sonic1.lst >error.log
convsym sonic1.lst s1built.bin -input asm68k_lst -inopt "/localSign=@ /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1built.bin