#!/bin/bash

path="Z:/base/.pio/build/black_f407zg/firmware.bin"
ipaddr=192.168.42.81
port=4444
memaddr=0x8000000

echo "build..."
pio run;
echo "build down"

echo "start upload firmware"
/usr/bin/expect << EOF
set timeout 50
spawn telnet $ipaddr $port
expect ">" { send "halt \r"}
expect ">" { send "flash write_image erase $path $memaddr \r"}
expect ">" { send "reset \r"}
expect ">" { send \x1d}
expect "telnet>" { send "quit \r"}
expect eof
EOF
echo "upload ok"
