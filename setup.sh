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

echo ".......adding /bin/ and php ........"
mkdir bin
pwd
cp /usr/bin/php bin/
ls -al
echo ".......FINSHED /bin/ and php ........"

exit
