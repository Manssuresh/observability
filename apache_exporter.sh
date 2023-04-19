#!/bin/bash 
cd /opt
curl -s https://api.github.com/repos/Lusitaniae/apache_exporter/releases/latest|grep browser_download_url|grep linux-amd64|cut -d '"' -f 4|wget -qi -
tar -xvzf apache_exporter-0.13.3.linux-amd64.tar.gz
rm -rf apache_exporter-0.13.3.linux-amd64.tar.gz
mv apache_exporter-0.13.3.linux-amd64/ apache_exporter/
cd apache_exporter/
nohup ./apache_exporter &