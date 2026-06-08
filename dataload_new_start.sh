#!/bin/bash
cd /opt/product/testteam/Products/NSSLOAD/DATALOAD/LOAD_SCRIPTS

ps -ef | grep testteam | egrep -i 'LOADSCRIP_DATA_LATEST|DNGRRBS|data_rrbs|PCRFRRBS|dngServer|Dia_DNG|Dia_PCRF|PCRF|gsnmpagent|dafagent' | grep -v 'grep' | awk '{print$2}' | xargs kill -9
sleep 5;
for ((i=0;i<1;i++))
do

#Do you want to view the top 10 folders thats occupying the disk space [y/n]:
echo n;
sleep 2;
#Enter the main product's S.No: 
echo 4;
#From the above list how many products do you want run:
echo 5;
#Enter the product S.No number:
echo 4;
echo 2;
echo 7;
echo 3;
echo 6;

#DIASTACK
echo 2;
echo y;
echo n;
echo 4;
#RRBS
echo 6;
echo y;
echo n;
echo 4;
#DNGSNMP
echo 1;
echo y;
echo n;
echo 4;
#PCRF
echo 4;
echo y;
echo n;
echo 4;
#DNG
echo 8;
echo y;
echo n;
echo 4;

done |./LOADSCRIP_DATA_LATEST.sh 

ps -ef | grep testteam | egrep -i 'LOADSCRIP_DATA_LATEST|DNGRRBS|data_rrbs|PCRFRRBS|dngServer|Dia_DNG|Dia_PCRF|PCRF|gsnmpagent|dafagent' | grep -v 'grep' | awk '{print$2}' | xargs kill -9
