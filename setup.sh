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

echo ".......adding /tmp/layer/lib/php/modules/ and moving files into the lib ........"
mkdir lib
cd lib
pwd
mkdir php
cd php
pwd
mkdir modules
cd modules
pwd
cp /lib64/php/modules/*.* .
ls -al
echo ".......FINSHED /tmp/layer/lib/php/modules/ and moving files into the lib ........"

exit
