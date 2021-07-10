#!/usr/bin/env bash

city=$1

# проверка наличия параметра city
if [ -z $city ]
then
echo "# Параметр city отсутствует. Выход. "
exit
fi

temp=`curl -s wttr.in/$city?format=j1 | jq --raw-output '.current_condition[0].FeelsLikeC'`
hum=`curl -s wttr.in/$city?format=j1 | jq --raw-output '.current_condition[0].humidity'`

echo "$temp°C $hum% humidity"
