#!/bin/bash


while [ true ]; do 
	kk=`termux-clipboard-get`
    if [[ $kk =~ ^.*youtu.*$ ]]; then
        youtube-dl $kk

    else 
    	echo "url is not matching"
       

    fi

done