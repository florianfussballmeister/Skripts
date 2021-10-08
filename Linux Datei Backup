#hier werden die Pakete installiert die für das Backup script gebraucht werden
apt-get update && apt-get upgrade -y
apt-get install zip && apt-get install nfs-common -y
mkdir /home/backup && mkdir /home/NAS

#hier wird die verbindung via nfs hergestellt
mount -t nfs 192.168.178.9:/volume1/ServerBackup /home/NAS/

# hier wird alles gezipt
zip -r /home/backup/sicherung_mc.zip /home/Minecraft/
zip -r /home/backup/sicherung_ts.zip /home/ts3/
zip -r /home/backup/sicherung_sinusbot.zip /opt/sinusbot
zip -r /home/backup/sicherung_sinusbot2.zip /opt/sinusbot2
zip -r /home/backup/sicherung_sinusbot3.zip /opt/sinusbot3
zip -r /home/backup/sicherung_sinusbot_DerCaoss50.zip /opt/sinusbot_DerCaoss50
sleep 20

#hier werden die Daten Kopiert
mkdir /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
cp /home/backup/sicherung_mc.zip /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
cp /home/backup/sicherung_ts.zip /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
cp /home/backup/sicherung_sinusbot.zip /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
cp /home/backup/sicherung_sinusbot2.zip /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
cp /home/backup/sicherung_sinusbot3.zip /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
cp /home/backup/sicherung_sinusbot_DerCaoss50.zip /home/NAS/sicherung_mc_ts_server_sinusbots_`date '+%d.%m'.%y`
rm /home/backup/sicherung_mc.zip
rm /home/backup/sicherung_ts.zip
rm /home/backup/sicherung_sinusbot.zip
rm /home/backup/sicherung_sinusbot2.zip
rm /home/backup/sicherung_sinusbot3.zip
rm /home/backup/sicherung_sinusbot_DerCaoss50.zip
