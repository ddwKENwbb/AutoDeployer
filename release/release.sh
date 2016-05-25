#/bin/sh

export NLS_LANG=Japanese_Japan.JA16SJIS;
read -p "Please input password: " pw
## 
echo '============================================ Start release operation!============================================'
echo 'started at '`date`
echo "mente or inn:"$1
echo "release_mente.sql or release_inn.sql:"$2
echo "Release Date:"$3
echo "Database:"$4
sqlplus $1/$pw@$4 @$2
mv ./$3.log ./$3.$4.$1.log
mv ./$3.$4.$1.log ./release/$3

echo 'finished at '`date`
