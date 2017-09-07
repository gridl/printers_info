#!/bin/bash

sql='mysql -uprinters_user -pVHBCQpcRO1VIeNsz -Dprinters -e' # Имя  бызы данных, имя пользователя и пароль для доступа к базе данных

ROOT_PATH=$(cd $(dirname $0) && pwd) # Определяем директорию, где сейчас находимся.

test=""
#test=yes_test    # Закоментировать для работы скрипа в режиме отладки


for line in $($sql "SELECT ipaddr FROM all_printers WHERE test_ping not like 'error'" | awk 'NR>1')
do

host=$line;
model=0;


if [ -n "$test" ]; then echo ip -- $host;fi

# Принтеры Kyocera
name1=$(curl -s http://$host/printer/printersum_top.htm | grep TITLE | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name1 $name1;fi
tmp=$($sql "select name from liquid_names where name like '%$name1%'" | awk 'NR>1')
if [ "$tmp" == "$name1" ]; then $sql "update all_printers set model='$name1' where ipaddr like '%$host%'"; fi

name2=$(curl -s http://$host/status.htm  | grep title |  head -n1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name2 $name2;fi
tmp=$($sql "select name from liquid_names where name like '%$name2%'" | awk 'NR>1')
if [ "$tmp" == "$name2" ]; then $sql "update all_printers set model='$name2' where ipaddr like '%$host%'"; fi

name3=$(curl -s http://$host/start/start.htm | grep h1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name3 $name3;fi
tmp=$($sql "select name from liquid_names where name like '%$name3%'" | awk 'NR>1')
if [ "$tmp" == "$name3" ]; then $sql "update all_printers set model='$name3' where ipaddr like '%$host%'"; fi

name4=$(curl -s http://$host/eng/start/start.htm | grep h1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name4 $name4;fi
tmp=$($sql "select name from liquid_names where name like '%$name4%'" | awk 'NR>1')
if [ "$tmp" == "$name4" ]; then $sql "update all_printers set model='$name4' where ipaddr like '%$host%'"; fi

name5=$(curl -s http://$host/DeepSleep.js | sed -r 's!^[^"]+!!' | sed -r 's/[)].+//' | sed 's,",,g')
if [ -n "$test" ]; then echo name5 $name5;fi
tmp=$($sql "select name from liquid_names where name like '%$name5%'" | awk 'NR>1')
if [ "$tmp" == "$name5" ]; then $sql "update all_printers set model='$name5' where ipaddr like '%$host%'"; fi

name6=$(curl -s http://$host/DeepSleep.js | grep ModelName | sed -r 's!^[^"]+!!' | sed -r 's/[)].+//' | sed 's,",,g')
if [ -n "$test" ]; then echo name6 $name6;fi
tmp=$($sql "select name from liquid_names where name like '%$name6%'" | awk 'NR>1')
if [ "$tmp" == "$name6" ]; then $sql "update all_printers set model='$name6' where ipaddr like '%$host%'"; fi

name7=$(curl -s http://$host/startwlm/Start_Wlm.htm | grep HeaderStatusPC | sed -r 's/^[^"]+//' | sed -r 's/,.+//' | sed 's/"//g')
if [ -n "$test" ]; then echo name7 $name7;fi

tmp=$($sql "select name from liquid_names where name like '%$name7%'" | awk 'NR>1')
if [ "$tmp" == "$name7" ]; then $sql "update all_printers set model='$name7' where ipaddr like '%$host%'"; fi

# Принтеры OKI
#c610
name8=$(curl -s http://$host/printer/printersum_top.htm | grep TITLE | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name8 $name8;fi
tmp=$($sql "select name from liquid_names where name like '%$name8%'" | awk 'NR>1')
if [ "$tmp" == "$name8" ]; then $sql "update all_printers set model='$name8' where ipaddr like '%$host%'"; fi

#C9655 MC562
name9=$(curl -s http://$host/status.htm  | grep title |  head -n1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name9 $name9;fi
tmp=$($sql "select name from liquid_names where name like '%$name9%'" | awk 'NR>1')
if [ "$tmp" == "$name9" ]; then $sql "update all_printers set model='$name9' where ipaddr like '%$host%'"; fi

### Принтеры HP
#HP Designjet 510
name10=$(curl -s http://$host/index_top.htm | grep HP | tail -n1 | sed -r 's/^[ ]+//')
if [ -n "$test" ]; then echo name10 $name10;fi
tmp=$($sql "select name from liquid_names where name like '%$name10%'" | awk 'NR>1')
if [ "$tmp" == "$name10" ]; then $sql "update all_printers set model='$name10' where ipaddr like '%$host%'"; fi

# hp LaserJet 2420
name11=$(curl -s http://$host/hp/device/this.LCDispatcher?nav=hp.DeviceInfo | grep span\ \ class\=\"hpPageText\" |  head -n2 | tail -n1 | sed -r 's/^[^>]+//' | sed -r 's/<.+//' |  sed 's/^\(\)*./\1/')
if [ -n "$test" ]; then echo name11 $name11;fi
tmp=$($sql "select name from liquid_names where name like '%$name11%'" | awk 'NR>1')
if [ "$tmp" == "$name11" ]; then $sql "update all_printers set model='$name11' where ipaddr like '%$host%'"; fi

# hp LaserJet 2410
name12=$(curl -s http://$host/index_top.htm | grep hp | tail -n1 | sed -r 's/^[ ]+//')
if [ -n "$test" ]; then echo name12 $name12;fi
tmp=$($sql "select name from liquid_names where name like '%$name12%'" | awk 'NR>1')
if [ "$tmp" == "$name12" ]; then $sql "update all_printers set model='$name12' where ipaddr like '%$host%'"; fi

# HP LaserJet P3005 Printers
name13=$(curl -s http://$host/hp/device/this.LCDispatcher?nav=hp.Config | grep id\=\"Text4\" | sed -r 's/^[^>]+//' | sed -r 's/<.+//' | sed 's/>//g')
if [ -n "$test" ]; then echo name13 $name13;fi
tmp=$($sql "select name from liquid_names where name like '%$name13%'" | awk 'NR>1')
if [ "$tmp" == "$name13" ]; then $sql "update all_printers set model='$name13' where ipaddr like '%$host%'"; fi

if [ -n "$test" ]; then echo ________________________________________________;fi

done
exit 0
