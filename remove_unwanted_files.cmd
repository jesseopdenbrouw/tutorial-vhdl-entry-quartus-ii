@echo off
rem
rem
echo.
echo This program will delete all unnessecary files from Quartus projects.
echo.
echo Please be VERY carefull! Press Ctrl-C to break.
echo.
pause
echo.

FOR /D /r %%G in ("db*") DO rd /s/q %%G
FOR /D /r %%G in ("incremental_db*") DO rd /s/q %%G
FOR /D /r %%G in ("simulation*") DO rd /s/q %%G
FOR /D /r %%G in ("output_files*") DO rd /s/q %%G

del /s *.done
del /s *.rpt
del /s *.sof
del /s *.pof
del /s *.summary
del /s *.jdi
del /s vsim.wlf
del /s *.bak
del /s transcript
del /s *assignment_defaults.qdf
del /s *.pin
del /s modelsim.ini
del /s *.qws
del /s *.smsg
del /s *.map
del /s *.cdf
del /s *.dpf
del /s PLLJ_PLLSPE_INFO.txt

echo.
echo Done.
echo.
pause
