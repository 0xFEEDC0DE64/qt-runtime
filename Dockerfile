FROM ubuntu:artful

RUN apt update \
 && apt install libssl1.0.0 ca-certificates libqt5core5a libqt5gui5 libqt5network5 libqt5multimedia5 libqt5sql5 libqt5sql5-mysql libqt5-sql-sqlite -y \
 && rm /var/lib/apt/lists/* /var/log/* -Rf
