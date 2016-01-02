#!/bin/bash
if [[ $1 = '' ]]
then
	echo $1
	echo password required
	exit 1
fi
sed -i "s/PASSWORD/$1/" /login.js
casperjs /login.js
