#!/bin/bash

# Display the UID and username of the user executing this script

#Display if user is "User" or not

#Display UID
echo "Your UID is ${UID}"
#Only display if UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match UID we are testing for"
	exit 1
fi
# Test if command succeded
USER_NAME=$(id -un)

if [[ "${?}" -ne 0 ]]
then
	echo 'The id command did not execute succesfully'
	exit 1
fi

echo "Your username is ${USER_NAME}"
#You can use a string test conditional
USER_NAME_TO_TEST_FOR='yasufernando1'
if [[ "${USER_NAME}" == "${USER_NAME_TO_TEST_FOR}" ]]
then
        echo 'Your username matches username we are testing for'
fi
#Test for != (not equal) fior string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
        echo "Your username does not match ${USER_NAME_TO_TEST_FOR}"
        exit 1
fi

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
        echo 'Your username does not matches username we are testing for'
fi

exit 0
