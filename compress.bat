@echo off
echo Compressing level art...
"FW_KENSC/compcmp.exe" artnem_u/8x8ghz.bin artcomp/8x8ghz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8lz.bin artcomp/8x8lz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8mz.bin artcomp/8x8mz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8sbz.bin artcomp/8x8sbz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8slz.bin artcomp/8x8slz.bin
"FW_KENSC/compcmp.exe" artnem_u/8x8syz.bin artcomp/8x8syz.bin
echo Compressing level blocks...
"FW_KENSC/enicmp.exe" map16_u/ghz.bin map16/ghz.bin
"FW_KENSC/enicmp.exe" map16_u/lz.bin map16/lz.bin
"FW_KENSC/enicmp.exe" map16_u/mz.bin map16/mz.bin
"FW_KENSC/enicmp.exe" map16_u/slz.bin map16/slz.bin
"FW_KENSC/enicmp.exe" map16_u/syz.bin map16/syz.bin
"FW_KENSC/enicmp.exe" map16_u/sbz.bin map16/sbz.bin
echo Compressing level chunks...
"FW_KENSC/koscmp.exe" map256_u/ghz.bin map256/ghz.bin
"FW_KENSC/koscmp.exe" map256_u/lz.bin map256/lz.bin
"FW_KENSC/koscmp.exe" map256_u/mz.bin map256/mz.bin
"FW_KENSC/koscmp.exe" map256_u/slz.bin map256/slz.bin
"FW_KENSC/koscmp.exe" map256_u/syz.bin map256/syz.bin
"FW_KENSC/koscmp.exe" map256_u/sbz.bin map256/sbz.bin
echo Compressing object art...
"FW_KENSC/nemcmp.exe" artnem_u/hud.bin artnem/hud.bin
"FW_KENSC/nemcmp.exe" artnem_u/monitors.bin artnem/monitors.bin
"FW_KENSC/nemcmp.exe" artnem_u/ss1up.bin artnem/ss1up.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssbg1.bin artnem/ssbg1.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssbg2.bin artnem/ssbg2.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssemeral.bin artnem/ssemeral.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssemstar.bin artnem/ssemstar.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssghost.bin artnem/ssghost.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssglass.bin artnem/ssglass.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssgoal.bin artnem/ssgoal.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssr.bin artnem/ssr.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssredwhi.bin artnem/ssredwhi.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssresems.bin artnem/ssresems.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssupdown.bin artnem/ssupdown.bin
"FW_KENSC/nemcmp.exe" artnem_u/ssw.bin artnem/ssw.bin
"FW_KENSC/nemcmp.exe" artnem_u/sswalls.bin artnem/sswalls.bin
"FW_KENSC/nemcmp.exe" artnem_u/sszone1.bin artnem/sszone1.bin
"FW_KENSC/nemcmp.exe" artnem_u/sszone2.bin artnem/sszone2.bin
"FW_KENSC/nemcmp.exe" artnem_u/sszone3.bin artnem/sszone3.bin
"FW_KENSC/nemcmp.exe" artnem_u/sszone4.bin artnem/sszone4.bin
"FW_KENSC/nemcmp.exe" artnem_u/sszone5.bin artnem/sszone5.bin
"FW_KENSC/nemcmp.exe" artnem_u/sszone6.bin artnem/sszone6.bin
"FW_KENSC/koscmp.exe" artkos_u/flowers.bin artkos/flowers.bin
echo Compressing screen mappings...
"FW_KENSC/enicmp.exe" mapeni_u/segalogo.bin mapeni/segalogo.bin
"FW_KENSC/enicmp.exe" mapeni_u/ssbg1.bin mapeni/ssbg1.bin
"FW_KENSC/enicmp.exe" mapeni_u/ssbg2.bin mapeni/ssbg2.bin
"FW_KENSC/enicmp.exe" mapeni_u/titlescr.bin mapeni/titlescr.bin
echo Compressing title screen crap...
TwizMod.exe arttwim/8x8title.bin
Twizzler.exe map16/TS.unc
Twizzler.exe map256/TS.unc
TwizMod.exe arttwim/titlefor.bin
TwizMod.exe arttwim/titleson.bin
TwizMod.exe arttwim/titletm.bin
TwizMod.exe arttwim/segalogo.bin
TwizMod.exe arttwim/Text.bin
Twizzler.exe mapeni/jcreds.unc