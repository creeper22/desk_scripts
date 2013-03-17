#################################################
# home_connect.sh					#
# Connect to selected server    		#
# AGS - Bart Agreda				#
# ver. 1.0 03/17/2013				#
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
echo "   [7] initiate VPN connection"
echo "   [8] open tunnel for kr and en servers"
echo ""
echo "Please choose the server to connect or task to do:"
read host

if [ $host == 1 ]
then
  ssh root@tss_cn -p 10022 -i /root/.ssh/tss_cn.pem
  exit 1
elif [ $host == 2 ]
then
  ssh root@tss_enm -p 10022 -i /root/.ssh/tss_enm.pem
  exit 1
elif [ $host == 3 ]
then
  ssh root@tss_en -p 10023 -i /root/.ssh/tss_en.pem
  exit 1
elif [ $host == 4 ]
then
  ssh root@tss_kr_AWS -p 10021 -i /root/.ssh/tss_kr.pem
  exit 1
elif [ $host == 5 ]
then
  ssh root@tss_kr_KT -p 10022 -i /root/.ssh/tss_kr.pem
  exit 1
elif [ $host == 6 ]
then
  ssh root@agsi_server -i /root/.ssh/id_rsa
  exit 1
elif [ $host == 7 ]
then
  openvpn --config ags.ovpn &
  echo "VPN Connection Open"
  exit 1
elif [ $host == 8 ]
then
  echo "Do not close this session"
  ssh -l root -L 10021:54.248.249.169:22 -L 10022:14.63.196.17:22 -L 10023:184.169.167.1:22 agsi_server -i /root/.ssh/id_rsa
  exit 1
else
  echo "Please select a valid input"
fi
