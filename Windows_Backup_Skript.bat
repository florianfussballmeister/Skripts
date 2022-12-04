@echo off
:: Wichtig, das Skript ist für das Programm 7-zip gemacht

:: Hier stellt das Skript eine WebDAV Verbindung zum NAS her, Da wo Benutzer steht, den Benutzer eintragen und wo passwort seht, austauschen gegen das Passwort vom Account
net use N: "https://fhagzocker.de:5006/jonasbackup/Windows Backup Desktop/Server-Backups" /user:benuter passwort /persistent:Yes

:: Hier wird die variabel erstellt
timeout /t 10
set moment=%date%_%time:~0,2%.%time:~3,2%
set moment=%moment: =0%

:: Hier wird der Ordner gezip
@echo off & setlocal
:: Hir bei set "Startordner=D:\Gameserver%moment%" Den Pfad ändern auf den Ordner, den du ziepen möchtest
set "Startordner=D:\Gameserver%moment%"
set "7z=%ProgramFiles%\7-zip\7z.exe"

for /f "tokens=3,2,4 delims=/- " %%x in ("%date%") do set d=%%y%%x%%z

set data=%d%

Echo zipping...
:: Hir wo der Pfad D:\Gameserver Ist, muss auch geändert werden auf den Pfad den Ordner der gezip werden soll
"C:\Program Files\7-Zip\7z.exe" a -tzip "D:\Server-Backups%date%_%time:~0,2%.%time:~3,2%.zip" "D:\Gameserver"

:: Hier wird die ZIP Datei auf das NAS kopiert
COPY "D:\Server-Backups%date%_%time:~0,2%.%time:~3,2%.zip" N:\

:: Hier werden die Backup daten auf den PC gelöscht
del "D:\Server-Backups%moment%.zip"
rmdir "D:\Server-Backups%moment%"