#!/bin/bash -x

for I in 1 2 3 4 5 10 11 ;
do
   ping -c 2 15.146.65.$I
done
