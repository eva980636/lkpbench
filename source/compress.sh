#!/bin/sh
name=$1
tar=${name:0:-1}
[ $2 ] && tar=$2
tar -zcvf ../tar/$tar.tar.gz $name
