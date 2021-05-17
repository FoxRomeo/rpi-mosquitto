# rpi-mosquitto
<a href="https://hub.docker.com/r/intrepidde/rpi-mosquitto"><img src="https://img.shields.io/docker/pulls/intrepidde/rpi-mosquitto.svg?style=plastic&logo=appveyor" alt="Docker pulls"/></a><br>
Raspberry Pi (RPi) Docker container with mosquitto mqtt server
(arm32v6 aka RPi A/B/B+ and later)
(arm64v8 tested on Pine A64)

### Healthchek (new!)
Define environment variables MQTT_PORT if you are NOT using default port (1883) for the mosquitto INSIDE the container.
(or if you are only using SSL port 8883)


```
docker run -d --restart=unless-stopped \
-p 1883:1883 -p 8883:8883 \
-e MQTT_PORT=1883 \
-v <YOUR CONFIG DIRECTORY>:/etc/mosquitto:ro
# -v <YOUR LOG DIRECTORY>:/mqtt/log:rw \
# -v <YOUR DATA DIRECTORY>:/mqtt/data:rw \
--name <YOUR CONTAINER NAME> \
intrepidde/arm32v6-mosquitto
```


or

```
docker run -d --restart=unless-stopped \
-p 1883:1883 -p 8883:8883 \
-e MQTT_PORT=8883 \
-v <YOUR CONFIG FILE>:/etc/mosquitto/mosquitto.conf:ro
-v <YOUR PWFILE FILE>:/etc/mosquitto/pwfile:ro
-v <YOUR CONF.D DIRECTORY>:/etc/mosquitto/conf.d:ro
-v <YOUR CERTS DIRECTORY>:/etc/mosquitto/certs:ro
# -v <YOUR LOG DIRECTORY>:/mqtt/log \
# -v <YOUR DATA DIRECTORY>:/mqtt/data \
--name <YOUR CONTAINER NAME> \
intrepidde/arm32v6-mosquitto
```

based on alpine:3.12
(alpine:latest >3.12 is not working on ANY RPi currently)(2021/02)


