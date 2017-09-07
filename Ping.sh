#!/bin/bash

ROOT_PATH=$(cd $(dirname $0) && pwd) # Определяем директорию, где сейчас находимся.

test=""
#test=yes_test    # Закоментировать для работы скрипа в режиме отладки

sql='mysql -uprinters_user -pVHBCQpcRO1VIeNsz -Dprinters -e' # Имя  бызы данных, имя пользователя и пароль для доступа к базе данных

for line in $($sql "SELECT ipaddr FROM all_printers" | awk 'NR>1')
do

host=$line;

# Тест на доступность
if [ -n "$test" ]; then echo Проверим доступность принтеров;fi

a=$(ping -c 1 $host | tail -n2 | head -n1 | awk {'print $6'} | sed s/%//)

if [ -n "$test" ]; then echo Пинговали ip $host;fi
if [ -n "$test" ]; then echo Потеряно пакетов: $a;fi
if [ $a != 0 ]
then
if [ -n "$test" ]; then echo Принтер не пингуется;fi
$sql "update all_printers set test_ping='error' where ipaddr like '%$host%'"
continue
fi
        ${ROOT_PATH}/wakeup_kyocera.sh $host > /dev/null 2>&1;
	sleep 3
mac=$(arping -c 1 -i eth0 $host | head -n2 | tail -n1 | awk {'print $4'})
$sql "update all_printers set test_ping='ok' where ipaddr like '%$host%'"
$sql "update all_printers set mac='$mac' where ipaddr like '%$host%'"

if [ -n "$test" ]; then echo ------------------------------------------------------; fi

done

exit 0

