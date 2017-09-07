#!/bin/bash
# Получение различных счётчиков для техники Kyocera на примере Kyocera 2535dn
# 2014 год, Рубцов Эдгар, Управление ИТ
# mailto:imax.bl@gmail.com

# Доступные параметры:
# accounting_print_black_and_white_copy_counter         : Количество ч/б страниц, напечатанных с использованием копировального аппарата
# accounting_print_black_and_white_printer_counter      : Количество ч/б страниц, напечатанных с использованием принтера
# accounting_print_black_and_white_fax_counter          : Количество ч/б страниц, напечатанных с использованием факса
# accounting_print_duplex_1sided_counter                : Количество страниц, напечатанных на одной стороне листа
# accounting_print_duplex_2sided_counter                : Количество страниц, напечатанных с использованием дуплекса ( листов = страниц/2)
# accounting_print_combine_none_counter                 : Общий счётчик напечатанных страниц
# accounting_print_combine_2in1_counter                 : Количество странниц, распечатанных в режиме `2 страницы на листе` ( листов = страниц * 2)
# accounting_print_combine_4in1_counter                 : Количество странниц, распечатанных в режиме `4 страницы на листе` ( листов = страниц * 4)
# accounting_scan_fax_counter                           : Количество страниц, сканированных с использованием факса
# accounting_scan_copy_counter                          : Количество страниц, сканированных с использованием копира
# accounting_scan_other_counter                         : Количество прочих сканированных страниц ( на флешку, в сеть и пр.)
### device_life_counter                                   : (?) Общий счётчик напечатанных страниц за всю жизнь устройства
# accounting_print_total_counter			: Всего
#param=$2;
param="accounting_print_total_counter" # Исправил, чтоб не вводить параметр получаемго сообщения
param2="accounting_print_black_and_white_copy_counter"
param3="accounting_print_black_and_white_printer_counter"
host=$1;
port=9090;
#echo '$0 = ' $0

#if [[ (-z "$1") || (-z "$2") ]]
if [[ (-z "$1") || (-z "accounting_print_total_counter") ]] # Исправил, чтоб не вводить параметр получаемго сообщения
then
#        echo "Usage: $0 10.16.41.149 device_life_counter";
        exit 1;
fi
while [[ ("$result" -eq "0") && ("$cicle" -ne "100") ]]
#while [[ (("$result" -eq "0")) -a (("$cicle" -eq "100")) ]]

do
xml=`curl -X POST -s -d '\
<?xml version="1.0" encoding="utf-8"?>\
<SOAP-ENV:Envelope \
xmlns:SOAP-ENV="http://www.w3.org/2003/05/soap-envelope"\
xmlns:SOAP-ENC="http://www.w3.org/2003/05/soap-encoding"\
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"\
xmlns:xsd="http://www.w3.org/2001/XMLSchema"\
xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"\
xmlns:xop="http://www.w3.org/2004/08/xop/include"\
xmlns:ns1="http://www.kyoceramita.com/ws/km-wsdl/log/counter_information">\
<SOAP-ENV:Header>\
<wsa:Action SOAP-ENV:mustUnderstand="true">\
http://www.kyoceramita.com/ws/km-wsdl/log/counter_information/get_counter\
</wsa:Action>\
</SOAP-ENV:Header>\
<SOAP-ENV:Body>\
<ns1:get_counterRequest>\
<ns1:counter_type>\
ALL_COUNTER\
</ns1:counter_type>\
</ns1:get_counterRequest>\
</SOAP-ENV:Body>\
</SOAP-ENV:Envelope>\
' $host:$port`;

if [[ `echo $xml | grep DEEP_SLEEP_NOW_ERROR` ]]
then
#       echo "Принтер спит, сейчас проснётся";
        sleep 3;
else
	echo $xml > test.log
        result=`echo $xml | sed "s/.*$param\(.*\)$param.*$/\1/g" | sed "s/[^0-9]//g"`
	result2=`echo $xml | sed "s/.*$param2\(.*\)$param2.*$/\1/g" | sed "s/[^0-9]//g"`
	result3=`echo $xml | sed "s/.*$param3\(.*\)$param3.*$/\1/g" | sed "s/[^0-9]//g"`
#####        result=`echo $xml`
fi
#let "cicle = cicle + 1" #Считаем кол-во циклов
cicle=$(($cicle+1))
#echo "Циклов выполнено - "$cicle

done

echo $result
echo $result2
echo $result3


exit 0

