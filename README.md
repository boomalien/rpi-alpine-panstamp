# rpi-docker-panstamp
docker image for the Raspberry Pi with PanStamp Lagarto SWAP
This image is Work in progress and not fully functional yet.

# Run Command
docker run --name panstamp -d -p 8001:8001 -v /opt/panstamp:/opt/python_tools/lagarto/lagarto-swap/config --device=/dev/ttyS0 boomalien/rpi-alpine-panstamp
