#!/bin/bash

sql='mysql -uprinters_user -pVHBCQpcRO1VIeNsz -Dprinters -e' # Имя  бызы данных, имя пользователя и пароль для доступа к базе данных

ROOT_PATH=$(cd $(dirname $0) && pwd) # Определяем директорию, где сейчас находимся.

test=""
#test=yes_test    # Закоментировать для работы скрипа в режиме отладки

for line in $($sql "SELECT ipaddr FROM all_printers WHERE test_ping not like 'error'" | awk 'NR>1')
do


host=$line;
model="";
serial="";

# Kyocera FS-1030MFP
sql='$sql'

model=$($sql "SELECT model FROM all_printers WHERE ipaddr like '%$host%'" | awk 'NR>1')

if [ "$model" == "FS-1030MFP" ] || [ "$model" == "FS-1130MFP" ] || [ "$model" == "FS-3920DN" ] || [ "$model" == "FS-6525MFP" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
if [ -n "$test" ]; then echo  FS-9530DN FS-1030MFP FS-1130MFP FS-3920DN;fi
serial=$(curl -s http://$host/start/start.htm | grep sData'\['8'\]''\ '= | tail -n1 | sed -r 's!^[^"]+!!' | sed -r 's/;.+//' | sed 's,",,g')
$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi


if [ "$model" == "FS-9530DN" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
if [ -n "$test" ]; then echo  FS-9530DN FS-1030MFP FS-1130MFP FS-3920DN;fi
serial=$(curl -s http://$host/start/start.htm | grep sData\.6.\ \=  | sed -r 's!^[^"]+!!' | sed -r 's/;.+//' | sed 's,",,g')
$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi


if [ "$model" == "FS-1320D" ]
then
if [ -n "$test" ]; then echo  model -- $model;fi
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
serial=$(curl -s http://$host/eng/start/start.htm | grep sData'\['6'\]''\ '= | sed -r 's!^[^"]+!!' | sed -r 's/;.+//' | sed 's,",,g')
$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi


if [ "$model" == "ECOSYS M2530dn" ] || [ "$model" == "ECOSYS M2030dn" ] || [ "$model" == "ECOSYS P6021cdn" ]  || [ "$model" == "ECOSYS P2135dn" ]
then
if [ -n "$test" ]; then echo  model -- $model;fi
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
serial=$(curl -s http://$host/dvcinfo/dvcconfig/DvcConfig_Config.htm | grep ComnAddLabelProperty\(\'2\'\,mes.174.+ | sed -r 's/[^"]+//' | sed -r 's/[": ]//g' | sed -r 's/^.//' | sed -r 's/,.+//')
	if [ "$serial" == "" ]
	then
	${ROOT_PATH}/wakeup_kyocera.sh $host > /dev/null 2>&1;
	sleep 30
	serial=$(curl -s http://$host/dvcinfo/dvcconfig/DvcConfig_Config.htm | grep ComnAddLabelProperty\(\'2\'\,mes.174.+ | sed -r 's/[^"]+//' | sed -r 's/[": ]//g' | sed -r 's/^.//' | sed -r 's/,.+//')
	fi

$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi



###########################

if [ "$model" == "FS-2100DN" ] || [ "$model" == "FS-6525MFP" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
serial=$(curl -s http://$host/startwlm/DvcConfig_Config.htm | grep sLabel\.nTmp.\ \=\ mes.174 | sed -r 's/[^"]+//' | sed -r 's/[":; ]//g')
        if [ "$serial" == "" ]
        then
        ${ROOT_PATH}/wakeup_kyocera.sh $host > /dev/null 2>&1;
        sleep 30
	serial=$(curl -s http://$host/startwlm/DvcConfig_Config.htm | grep sLabel\.nTmp.\ \=\ mes.174 | sed -r 's/[^"]+//' | sed -r 's/[":; ]//g')
        fi

$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi


if [ "$model" == "hp LaserJet 2420" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
serial=$(curl -s http://$host/hp/device/this.LCDispatcher?nav=hp.DeviceInfo | grep span\ \ class\=\"hpPageText\" | tail -n1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi

## HP LaserJet P3005
if [ "$model" == "HP LaserJet P3005" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
serial=$(curl -s http://$host/hp/device/this.LCDispatcher?nav=hp.Config | grep id\=\"Text10\" | sed -r 's/^[^>]+//' | sed -r 's/<.+//' | sed 's/>//g')
$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
#if [ -n "$test" ]; then echo  $serial
fi



###############################
#OKI

if [ "$model" == "C9655" ] || [ "$model" == "MC562" ] || [ "$model" == "C610" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
serial=$(curl -s http://$host/status.htm | grep Serial\ Number\< | grep -Eoi '[a-z]{2}[0-9]{8}')
$sql "update all_printers set serial_nomber='$serial' where ipaddr like '%$host%'"
if [ -n "$test" ]; then echo  $serial;fi
fi



if [ -n "$test" ]; then echo  _______________________________________________;fi

done
exit 0
