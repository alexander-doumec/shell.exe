csv_file="Shell_Userlist.csv"
colonne_role=$(cut -d ',' -f 4 "$csv_file")
colonne_name=$(cut -d ',' -f 1 "$csv_file")


echo $colonne_role
echo $colonne_name

