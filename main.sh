#!/bin/bash

function publish() {
	mosquitto_pub -h mqtt.sj.ifsc.edu.br -m $1 -t "julinho/$2" -d
	sleep 1
}

while true; do
	publish 1 "help"
	publish 0 "help"
	publish 1 "enable"
	publish 0 "enable"
	publish "140.0" "check"
	publish "150.0" "check"
done
