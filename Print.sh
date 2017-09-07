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

model=$($sql "SELECT model FROM all_printers WHERE ipaddr like '%$host%'" | awk 'NR>1')

if [ "$model" == "FS-1030MFP" ] || [ "$model" == "FS-1130MFP" ] || [ "$model" == "FS-3920DN" ] || [ "$model" == "FS-1320D" ] || [ "$model" == "ECOSYS M2530dn" ] || [ "$model" == "ECOSYS M2030dn" ] || [ "$model" == "FS-2100DN" ] || [ "$model" == "ECOSYS P6021cdn" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
print_all=$(${ROOT_PATH}/kyocera.sh $host | sed -n 1p)
print_c=$(${ROOT_PATH}/kyocera.sh $host | sed -n 2p)
print_p=$(${ROOT_PATH}/kyocera.sh $host | sed -n 3p)


if [ "$(echo -n $print_all | wc -c)" -ge "10" ]
then print_all=""
fi

if [ "$(echo -n $print_c | wc -c)" -ge "10" ]
then print_c=""
fi

if [ "$(echo -n $print_p | wc -c)" -ge "10"  ]
then print_p=""
fi


$sql "update all_printers set sum_print_all='$print_all' where ipaddr like '%$host%'"
$sql "update all_printers set sum_copy='$print_c' where ipaddr like '%$host%'"
$sql "update all_printers set sum_printter='$print_p' where ipaddr like '%$host%'"
fi


if [ "$model" == "FS-3920DN" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
print_all=$(curl -s http://$host/start/start.htm | grep sData\.8.\ \=  | sed -r 's!^[^"]+!!' | sed -r 's/;.+//' | sed 's,",,g')
$sql "update all_printers set sum_print_all='$print_all' where ipaddr like '%$host%'"
fi


if [ "$model" == "FS-1320D" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
print_all=$(curl -s http://$host/eng/start/start.htm | grep sData'\['7'\]''\ '= | sed -r 's!^[^"]+!!' | sed -r 's/;.+//' | sed 's,",,g')
$sql "update all_printers set sum_print_all='$print_all' where ipaddr like '%$host%'"
fi


if [ "$model" == "MC562" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
print_all=$(curl -s http://$host/countsum.htm | grep Tray1 | grep -Eoi '[0-9]+' | tail -n1)
$sql "update all_printers set sum_print_all='$print_all' where ipaddr like '%$host%'"
fi


if [ "$model" == "hp LaserJet 2420" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
print_all=$(curl -s http://$host/hp/device/this.LCDispatcher?nav=hp.Usage | grep span\ \ class\=\"hpPageText\" | tail -n1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
$sql "update all_printers set sum_print_all='$print_all' where ipaddr like '%$host%'"
fi


if [ "$model" == "HP LaserJet P3005" ]
then
if [ -n "$test" ]; then echo  $model;fi
if [ -n "$test" ]; then echo  $host;fi
print_all=$(curl -s http://$host/hp/device/this.LCDispatcher?nav=hp.Usage | grep id\=\"Text212\" | sed -r 's/^[^>]+//' | sed -r 's/<.+//' | sed 's/>//g')
$sql "update all_printers set sum_print_all='$print_all' where ipaddr like '%$host%'"
fi


if [ -n "$test" ]; then echo  $print_all;fi
if [ -n "$test" ]; then echo  $print_c;fi
if [ -n "$test" ]; then echo  $print_p;fi



if [ -n "$test" ]; then echo  ______________________________________________;fi

done
exit 0

