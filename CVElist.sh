#!/bin/bash

vDate=`date +%Y%m%d`
cd /data/wwwroot/mirrors/CVE/list
rm -f *
echo $vDate | tee updated.txt
wget http://cve.mitre.org/data/downloads/allitems.csv.Z
wget http://cve.mitre.org/data/downloads/allitems.html.Z
wget http://cve.mitre.org/data/downloads/allitems.txt.Z
wget http://cve.mitre.org/data/downloads/allitems.xml.Z
wget http://cve.mitre.org/data/downloads/allitems.csv.gz
wget http://cve.mitre.org/data/downloads/allitems.html.gz
wget http://cve.mitre.org/data/downloads/allitems.txt.gz
wget http://cve.mitre.org/data/downloads/allitems.xml.gz
#wget http://cve.mitre.org/data/downloads/allitems.csv
#wget http://cve.mitre.org/data/downloads/allitems.html
#wget http://cve.mitre.org/data/downloads/allitems.txt
#wget http://cve.mitre.org/data/downloads/allitems.xml
gzip -dk allitems.csv.gz
gzip -dk allitems.html.gz
gzip -dk allitems.txt.gz
gzip -dk allitems.xml.gz
