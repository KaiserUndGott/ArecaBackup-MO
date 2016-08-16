@echo off


rem ## Script stoppt und startet die MO Dienste
rem ## SPnG (FW), Stand: August 2016


rem ###########################################################################
rem Bitte anpassen ############################################################
rem ###########################################################################

rem ## MO Installationspfad
set mopfad=C:\Indamed

rem ###########################################################################
rem Ende der Anpassungen ######################################################
rem ###########################################################################













rem ## Firebird Dienst anhalten und MO sperren
if NOT exist %mopfad%\stop.mo echo "" >%mopfad%\stop.mo
net stop FirebirdGuardianMEDICALOFFICE 2>nul
echo.
start explorer.exe "%mopfad%\dat"
echo MO Datenbank jetzt tauschen, dann weiter mit ENTER...
echo.
pause


rem ## Firebird Dienst starten und MO entsperren
echo.
del /F %mopfad%\stop.mo
net start FirebirdGuardianMEDICALOFFICE
echo.
pause


exit