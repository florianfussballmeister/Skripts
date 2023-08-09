@ECHO OFF
ECHO Willkommen %USERNAME% zum Temp Loschscript von Florian_fussballmeister
Echo Webseite https://florian-fussballmeister.jimdofree.com/
ECHO moechten Sie %USERNAME% wirklich die Temp Dateien Loschen ? (j / n)
SET /p wahl=
if '%wahl%' == 'n' goto Nein
if '%wahl%' == 'j' goto Ja
Goto Ende
:Nein
echo Sie haben NEIN gedrueckt
goto Ende
:Ja
echo Sie haben JA gedrueckt
del C:\Users\%USERNAME%\AppData\Local\Temp\*.* /F /S /Q
del C:\Users\%USERNAME%\AppData\LocalLow\Temp\*.* /F /S /Q
del C:\Temp\*.* /F /S /Q
del C:\Windows\Temp\*.* /F /S /Q
:Ende
pause
