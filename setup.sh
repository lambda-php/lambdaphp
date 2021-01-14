#!/bin/bash

echo ".......UPDATING SYSTEM ........"
sudo yum update -y
echo ".......FINSHED UPDATING SYSTEM ........"

echo ".......INSTALLLING PHP ........"
sudo yum install php -y
echo ".......FINSHED INSTALLLING PHP ........"

echo ".......adding /tmp/layer ........"
mkdir /tmp/layer
cd /tmp/layer
pwd
ls -al
echo ".......FINSHED /tmp/layer ........"

echo ".......adding /tmp/layer/bin/ and php ........"
mkdir bin
pwd
cp /usr/bin/php bin/
ls -al
echo ".......FINSHED /tmp/layer/bin/ and php ........"

echo ".......adding /tmp/layer/lib/ and moving files into the lib ........"
mkdir lib
pwd
for lib in libncurses.so.5 libtinfo.so.5 libpcre.so.0; do
  cp "/lib64/${lib}" lib/
done
ls -al
echo ".......FINSHED /tmp/layer/lib/ and moving files into the lib ........"

exit
