#!/bin/bash

for _IP in $(cat ${1})
do
ping -q -c 1 $_IP > /dev/null
if [ $? -eq 0 ]
then
   echo "$_IP" >>ping_good
else
   echo "$_IP" >>ping_bad
fi
done

