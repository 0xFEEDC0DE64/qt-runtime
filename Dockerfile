FROM ubuntu:devel

RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install ca-certificates libqt5core5a libqt5gui5 libqt5network5 libqt5multimedia5 libqt5sql5 libqt5sql5-mysql libqt5sql5-sqlite libqt5serialport5 -y \
 && rm /var/lib/apt/lists/* /var/log/* -Rf

ENV QT_LOGGING_RULES *.debug=true
