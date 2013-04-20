#################################################
# home_connect.sh				#
# Connect to selected server    		#
# AGS - Bart Agreda				#
# ver. 1.0 03/17/2013				#
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
echo "   [9] open tunnel"
echo ""
echo "Please choose the server to connect or task to do:"
read host

if [ $host == 1 ]
then
  ssh root@127.0.0.1 -p 10020 -i /Users/bart/.keys/tss-cn.pem
  exit 1
elif [ $host == 2 ]
then
  ssh root@127.0.0.1 -p 10021 -i /Users/bart/.keys/tss-enm.pem
  exit 1
elif [ $host == 3 ]
then
  ssh root@127.0.0.1 -p 10022 -i /Users/bart/.keys/tss-hlok.pem
  exit 1
elif [ $host == 4 ]
then
  ssh root@127.0.0.1 -p 10023 -i /Users/bart/.keys/tss-blok.pem
  exit 1
elif [ $host == 5 ]
then
  ssh root@127.0.0.1 -p 10024 -i /Users/bart/.keys/tss.pem
  exit 1
elif [ $host == 6 ]
then
  ssh root@127.0.0.1 -p 10025 -i /Users/bart/.keys/tss-kr.pem
  exit 1
elif [ $host == 7 ]
then
  ssh root@127.0.0.1 -p 10026 -i /Users/bart/.keys/tss-kr.pem
  exit 1
elif [ $host == 8 ]
then
  ssh root@agsi_server -i /Users/bart/.keys/agsi-bart2.pem
  exit 1
elif [ $host == 9 ]
then
  echo "Do not close this session"
  ssh -l root -L 10020:14.63.161.130:22 -L 10021:211.125.93.44:10022 -L 10022:157.7.149.104:10022 -L 10023:211.11.101.136:10022 -L 10024:211.11.100.40:10022 -L 10025:54.248.249.169:22 -L 10026:14.63.196.17:22 agsi_server -i /Users/bart/.keys/agsi-bart2.pem
  exit 1
else
  echo "Please select a valid input"
fi
