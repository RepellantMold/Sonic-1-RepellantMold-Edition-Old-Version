@echo off
asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /o l+ /p /o ae- sonic1.asm, s1built.bin , ,sonic1.lst >error.log
rem rompad.exe s1built.bin 255 0
convsym sonic1.lst s1built.bin -input asm68k_lst -inopt "/localSign=@ /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1built.bin