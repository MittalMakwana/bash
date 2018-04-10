#!/bin/bash
## 
## Author: Mittal Makwana
## Email: mittalmak@gmail.com
##
##

## The following for loops take a filename as an arguement 
## The file name should contain IP address/domain name
## The for loop itrates over the list and ping each server
## one at a time and save the result
## if sucessfull to ping_good file
## and fail ping server are storage in ping_bad file
##
##
##

#########################
# Declare parameter
########################

good="ping_good"
bad="ping_bad"
ping_count=1


for _IP in $(cat ${1})
do
ping -q -c $ping_count $_IP > /dev/null
if [ $? -eq 0 ]
then
   echo "$_IP" >> $good
else
   echo "$_IP" >> $bad
fi
done

