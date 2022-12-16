#!/bin/bash
#Description: Logrotation of a given positional file 

sudo apt-get update

# <path_to_log_files> is $1

echo"
/var/log/$1 {
    create 0644 root      
    su <user> <group>     
    maxsize 10M              
    daily                 
    rotate 4                
}" > /etc/logrotatecustom.conf

cp /etc/logrotatecustom.conf /etc/logrotate.d

logrotate -f /etc/logrotatecustom.conf
