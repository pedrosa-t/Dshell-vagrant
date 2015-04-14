#!/bin/bash

echo "System Update"
apt-get update
apt-get -y upgrade

echo "Install dependencies for DSHELL"
apt-get install  -y python-pip python-crypto python-dpkt python-ipy python-pypcap wget git 
sleep 2
pip install --upgrade pip
pip install pygeoip

echo "Donwload GeoLite Legacy Downloadable Databases"
wget http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNumv6.dat.gz
wget http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz
wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
wget http://geolite.maxmind.com/download/geoip/database/GeoIPv6.dat.gz

echo "Clone Project"
git clone https://github.com/USArmyResearchLab/Dshell.git /opt/Dshell

echo "Decompress and copy Geoip info"
for i in *.gz; do gzip -d $i; done; mv *.dat /opt/Dshell/share/GeoIP/

echo "Compile project"
cd /opt/Dshell
make

echo "VM ready to decode captures with Dshell"
