#!/bin/bash

EXT=$1
if [ -z $2 ] ; then
PASSWORD="\$\${default_password}"
else
PASSWORD=$2
fi

rm $EXT.xml

echo "generating extension " $EXT " to $EXT.xml ..."

echo '<include>' >> $EXT.xml
echo '  <user id="'$EXT'">' >> $EXT.xml
echo '    <params>' >> $EXT.xml
echo '      <param name="password" value="'$PASSWORD'"/>' >> $EXT.xml
echo '      <param name="vm-password" value="'$EXT'"/>' >> $EXT.xml
echo '    </params>' >> $EXT.xml
echo '    <variables>' >> $EXT.xml
echo '      <variable name="toll_allow" value="domestic,international,local"/>' >> $EXT.xml
echo '      <variable name="accountcode" value="'$EXT'"/>' >> $EXT.xml
echo '      <variable name="user_context" value="default"/>' >> $EXT.xml
echo '      <variable name="effective_caller_id_name" value="extension '$EXT'"/>' >> $EXT.xml
echo '      <variable name="effective_caller_id_number" value="'$EXT'"/>' >> $EXT.xml
echo '      <variable name="outbound_caller_id_name" value="$${outbound_caller_name}"/>' >> $EXT.xml
echo '      <variable name="outbound_caller_id_number" value="$${outbound_caller_id}"/>' >> $EXT.xml
echo '      <variable name="callgroup" value="techsupport"/>' >> $EXT.xml
echo '    </variables>' >> $EXT.xml
echo '  </user>' >> $EXT.xml
echo '</include>' >> $EXT.xml
