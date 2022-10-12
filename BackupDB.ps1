$dbUser     ="Cloudarmee"
$dbPassword ="dY_yzw9Fo(y;vGL"
$dbHost     ="test.cywqbkhmouzi.ap-south-1.rds.amazonaws.com"
$dbName     ="test"


#
# ─── DATE WITH FORMAT TO ADD A OUT SQL FILE ─────────────────────────────────────
#
$ACTUAL_DATE               = Get-Date -Format "dd-MM-yyyy hh.mm.ss"


#
# ─── GETTING THE NAME OF THE OUT SQL FILE TO BACKUP ─────────────────────────────
#
$PATH_DBNAME_BAKUP          ="C:\DBBackup"
$FILE_NAME_BACKUP_DBNAME    ="DBNAMEdump_"

$FILE_BACKUP_DBNAME         = $PATH_DBNAME_BAKUP+$FILE_NAME_BACKUP_DBNAME+$ACTUAL_DATE+".sql"

echo $FILE_BACKUP_DBNAME

#
# ─── INVOKING THE COMPLETE COMMAND ──────────────────────────────────────────────
pushd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
.\mysqldump.exe --defaults-extra-file=mysql-credentials.cnf -h $dbHost   $dbName > $FILE_BACKUP_DBNAME
