USERID="blackmonda"
LOG="/var/log/auth.log"
HIT=$(cat $LOG | grep $USERID | wc -l)
echo "L'utilisateur $USERID à effectuer $HIT connexions à la VM Linux."
DATE=$(date +"%d-%m-%Y-%H:%M")
FILE="number_connection-$DATE.txt"
echo $HIT > $FILE
echo "Le nombre de connexion pour l'utilisateur $USERID a été écrit dans le fichier $FILE"
mkdir Backup
tar -czvf Backup/$FILE.tar.gz $FILE
echo "le fichier $FILE a été archivé et déplacé dans le répertoire 'Backup'."


