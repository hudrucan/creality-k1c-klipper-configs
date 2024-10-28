HOME_DIR="/usr/data"
BACKUP_DIR="$HOME_DIR/k1c-config"

[ -e $BACKUP_DIR/printer_configs ] && rm -rf $BACKUP_DIR/printer_configs
[ -e $BACKUP_DIR/guppyconfig.json ] && rm $BACKUP_DIR/guppyconfig.json

cp $HOME_DIR/guppyscreen/guppyconfig.json $BACKUP_DIR/guppyconfig.json
cp -r $HOME_DIR/printer_data/config $BACKUP_DIR/printer_configs

cd $BACKUP_DIR

git add .
git commit -m "New backup from $(date +"%x - %X")"
git push origin HEAD

