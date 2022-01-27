#!/bin/bash

location_code="hfx123"
echo ${#location_code}
expr "$location_code" : '\(...\)'
expr "$location_code" : '\([a-c]\)'
expr "$location_code" : '\([a-j]\)'
expr "$location_code" : '\([0-9]\)'

echo
echo ${location_code:0:3}
echo ${location_code:3:3}

echo
echo ${location_code//hfx/yhz}
echo "$location_code"
location_code=${location_code//hfx/yhz}
echo "$location_code"
