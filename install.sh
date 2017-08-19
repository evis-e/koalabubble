PREFIX="/usr/local"

mkdir -p $PREFIX/bin || (mkdir $PREFIX; mkdir $PREFIX/bin)
cp ./koala.sh $PREFIX/bin
mv /usr/local/bin/koala.sh /usr/local/bin/koala

echo Koala installed successfully. Have fun!
