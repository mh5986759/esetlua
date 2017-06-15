#!/bin/bash


memTotal_b=`free -b |grep Mem |awk '{print $2}'`
memFree_b=`free -b |grep Mem |awk '{print $4}'`
memBuffer_b=`free -b |grep Mem |awk '{print $6}'`
memCache_b=`free -b |grep Mem |awk '{print $7}'`

memTotal_m=`free -m |grep Mem |awk '{print $2}'`
memFree_m=`free -m |grep Mem |awk '{print $4}'`
memBuffer_m=`free -m |grep Mem |awk '{print $6}'`
memCache_m=`free -m |grep Mem |awk '{print $7}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
hdd=`df -lh | awk '{if ($6 == "/") { print $5 }}' | head -1 | cut -d'%' -f1`
uptime=`uptime`
ProcessCnt=`ps -A | wc -l`
memUsed_b=$(($memTotal_b-$memFree_b-$memBuffer_b-$memCache_b))
memUsed_m=$(($memTotal_m-$memFree_m-$memBuffer_m-$memCache_m))

memUsedPrc=$((($memUsed_b*100)/$memTotal_b))

echo "Ram : 16.12 MB"
echo "〰〰〰〰〰〰〰"
echo "Ram Used : $memUsed_m MB  "
echo "〰〰〰〰〰〰〰"
echo 'CPU Used : '"$CPUPer"'%'
echo "〰〰〰〰〰〰〰"
echo 'Hard : '"$hdd"'%'
echo "〰〰〰〰〰〰〰"
echo 'Process : '"$ProcessCnt"
echo "〰〰〰〰〰〰〰"
echo 'Uptime : '"$uptime"
