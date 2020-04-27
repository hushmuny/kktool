#!/bin/bash
# usage 
# search-by-image /path/of/image.jpg
kk="$@"
url=`curl -F encoded_image=@"$kk" https://www.google.de/searchbyimage/upload | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' `
if [ -e $PREFIX/bin/xdg-open ] 
then
	xdg-open $url
else
	echo $url

fi