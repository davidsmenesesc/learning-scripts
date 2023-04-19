#!/bin/bash

#Display UID and username of user executing the script
#Display if it is root or not

#Display UID
echo "Your UID is $[UID]"

#Display username
#USER_NAME=´id -un´
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"
 
whoami
#Display if user is root or not
 
if [[ "${UID}" -eq 0 ]] 
then 
    echo 'You are root'
else
    echo 'You are not root'
fi

