#!/bin/bash

# this is only for termux user.
#before running this script make sure you have install teemux api apps and api packages
# this is simple script, that can help me or you or whosoever run this
# when you copy any youtube url it can check and doenload it , 
# make sure this script is running in background.
#you can modify it as you want 
# if error occur change shebang with #!/data/data/com.termux/files/usr/bin/bash

while [ true ]; do 
	kk=`termux-clipboard-get`
    if [[ $kk =~ ^.*youtu.*$ ]]; then
        youtube-dl $kk

    else 
    	echo "url is not matching"
       

    fi

done