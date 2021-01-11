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
echo ".......FINSHED /tmp/layer ........"

exit
