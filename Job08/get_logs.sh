USERID="blackmonda"
LOG="/var/log/auth.log"
HIT=$(cat $LOG | grep $USERID | wc -l)
echo "L'utilisateur $USERID à effectuer $HIT connexions à la VM Linux."
