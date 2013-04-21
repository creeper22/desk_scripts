#################################################
# home_connect.sh				#
# Connect to selected server    		#
# AGS - Bart Agreda				#
# ver. 2.0 04/20/2013				#
#################################################
#!/bin/bash
clear
echo "World Server Selection"
echo "   [1] tss_cn"
echo "   [2] tss_enm"
echo "   [3] tss_hlok"
echo "   [4] tss_blok"
echo "   [5] tss_lok"
echo "   [6] tss_kr(AWS)"
echo "   [7] tss_kr(KT)"
echo "   [8] agsi_server"
echo ""
echo "Please choose the server to connect or task to do:"
read host

if [ $host == 1 ]
then
  ssh root@tss-cn -p 10022 -i /sers/bart/.keys/tss-cn.pem
  exit 1
elif [ $host == 2 ]
then
  ssh root@tss-enm -p 10022 -i /Users/bart/.keys/tss-enm.pem
  exit 1
elif [ $host == 3 ]
then
  ssh root@tss-hlok -p 10022 -i /Users/bart/.keys/tss-hlok.pem
  exit 1
elif [ $host == 4 ]
then
  ssh root@tss-blok -p 10022 -i /Users/bart/.keys/tss-blok.pem
  exit 1
elif [ $host == 5 ]
then
  ssh root@tss-lok -p 10022 -i /Users/bart/.keys/tss.pem
  exit 1
elif [ $host == 6 ]
then
  ssh root@tss-kr-aws -i /Users/bart/.keys/tss-kr.pem
  exit 1
elif [ $host == 7 ]
then
  ssh root@tss-kr-kt -i /Users/bart/.keys/tss-kr.pem
  exit 1
elif [ $host == 8 ]
then
  ssh root@agsi_server -i /Users/bart/.keys/agsi-bart2.pem
  exit 1
else
  echo "Please select a valid input"
fi
