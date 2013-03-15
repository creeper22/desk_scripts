#################################################
# connect.sh					#
# Connect to selected server    		#
# AGS - Bart Agreda				#
# ver. 1.0 02/28/2013				#
#################################################
#!/bin/bash
clear
echo "World Server Selection"
echo "   [1] tss_cn"
echo "   [2] tss_enm"
echo "   [3] tss_en"
echo "   [4] tss_kr(AWS)"
echo "   [5] tss_kr(KT)"
echo "   [6] agsi_server"
echo ""
echo "Please choose the server to connect to:"
read host

if [ $host == 1 ]
then
  ssh root@tss_cn -p 10022 -i /home/bart/.ssh/tss_cn.pem
  exit 1
elif [ $host == 2 ]
then
  ssh root@tss_enm -p 10022 -i /home/bart/.ssh/tss_enm.pem
  exit 1
elif [ $host == 3 ]
then
  ssh root@tss_en -i /home/bart/.ssh/tss_en.pem
  exit 1
elif [ $host == 4 ]
then
  ssh root@tss_kr\(AWS\) -i /home/bart/.ssh/tss_kr.pem
  exit 1
elif [ $host == 5 ]
then
  ssh root@tss_kr\(KT\) -i /home/bart/.ssh/tss_kr.pem
  exit 1
elif [ $host == 6 ]
then
  ssh root@192.168.10.5 -i /home/bart/.ssh/id_rsa
  exit 1
else
  echo "Please select a valid input"
fi
