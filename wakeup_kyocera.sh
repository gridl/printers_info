#!/bin/bash

host=$1;

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
' $host:9090`;

#echo $xml

exit 0
