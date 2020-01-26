#!/data/data/com.termux/files/usr/bin/bash

##simple internet connectivity checker ,which uses wget and google site.if internet is available 
# it returns "OK"
wget --spider --quiet http://www.gogle.com
if [ "$?" == 0 ]; then
  echo "OK"
else
	echo "FAIL"
fi