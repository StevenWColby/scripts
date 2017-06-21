#!/bin/bash -x

for I in 0 1 2 3 4 ;
do
   ping -c 2 build$I.cldsys.hpcloud.net
done
