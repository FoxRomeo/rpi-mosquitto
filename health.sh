#!/bin/bash

EXITCODE=0


if [[ -z "${MQTT_PORT}" ]]; then
 MQTT_PORT=1883
fi
if netstat -an | grep "LISTEN" | grep "${MQTT_PORT}" > /dev/null; then
    echo "listening for connections on port ${MQTT_PORT}. HEALTHY"
else
    echo "not listening for connections on port ${MQTT_PORT}. UNHEALTHY"
    EXITCODE=1
fi


exit $EXITCODE
