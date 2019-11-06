TARGET="/Volumes/time_machine/"

echo "Copying $WRK to $TARGET"
rsync -ravz --progress --partial $WRK $TARGET

echo "Copying documents over"
rsync -ravz $HOME/documents $TARGET


echo "Copying over settings into $TARGET/setting"
mkdir -p $TARGET/settings
rsync -ravz $HOME/.[^.]* $TARGET/setting

echo "Copying movies"
rsync -ravz $HOME/movies $TARGET

echo "Copying pictures"
rsync -ravz $HOME/pictures $TARGET

echo "Copying shared"
rsync -ravz $HOME/shared $TARGET

echo "Copying preferences"
rsync -avzr $HOME/Library/Preferences $TARGET
