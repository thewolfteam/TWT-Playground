REM packs and installs mod binaries and etmain folders into one or two destination directories
REM you need to have the program 7.zip in your installation path: http://www.7-zip.org/

REM TODO
REM - add lua and other stuff maybe, for now this is basic

REM ===================================
REM CONFIG START

set PATH_TO_BINARIES=.\src\Release
set PATH_TO_ETMAIN=.\etmain
set PATH_TO_WETEXE_1=C:\Users\nm\etstuff\WETc
set PATH_TO_WETEXE_2=C:\Users\nm\etstuff\WETs
set MODNAME=twt-playground
set COPY_TO_SECOND_LOCATION=1

REM CONFIG END
REM ===================================

REM pack all files and rename to .pk3
7z.exe u -tzip z.zip %PATH_TO_BINARIES%\cgame_mp_x86.dll %PATH_TO_BINARIES%\ui_mp_x86.dll %PATH_TO_ETMAIN%\animations %PATH_TO_ETMAIN%\fonts %PATH_TO_ETMAIN%\gfx %PATH_TO_ETMAIN%\hud %PATH_TO_ETMAIN%\models %PATH_TO_ETMAIN%\script %PATH_TO_ETMAIN%\scripts %PATH_TO_ETMAIN%\sound %PATH_TO_ETMAIN%\textures %PATH_TO_ETMAIN%\ui %PATH_TO_ETMAIN%\watermark %PATH_TO_ETMAIN%\weapons -r

rename z.zip z.pk3

REM modfolder must exist (see MODNAME variable above)
copy z.pk3 %PATH_TO_WETEXE_1%\%MODNAME%
copy %PATH_TO_BINARIES%\qagame_mp_x86.dll %PATH_TO_WETEXE_1%\%MODNAME%

REM additionally unpack the binaries
copy %PATH_TO_BINARIES%\cgame_mp_x86.dll %PATH_TO_WETEXE_1%\%MODNAME%
copy %PATH_TO_BINARIES%\ui_mp_x86.dll %PATH_TO_WETEXE_1%\%MODNAME%

REM do the same with
if %COPY_TO_SECOND_LOCATION%==1 (
	copy z.pk3 %PATH_TO_WETEXE_2%\%MODNAME%
	copy %PATH_TO_BINARIES%\qagame_mp_x86.dll %PATH_TO_WETEXE_2%\%MODNAME%

	copy %PATH_TO_BINARIES%\cgame_mp_x86.dll %PATH_TO_WETEXE_2%\%MODNAME%
	copy %PATH_TO_BINARIES%\ui_mp_x86.dll %PATH_TO_WETEXE_2%\%MODNAME%
)

del z.pk3
