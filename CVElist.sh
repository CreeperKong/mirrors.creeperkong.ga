#!/bin/bash

# Set Date
vDate=`date +%Y%m%d`

# Goto Directory
cd /data/wwwroot/mirrors/CVE/list

# Clean existing content
rm -f *

# Create data of update
echo $vDate | tee updated.txt

# Download original
wget http://cve.mitre.org/data/downloads/allitems.csv.Z
wget http://cve.mitre.org/data/downloads/allitems.html.Z
wget http://cve.mitre.org/data/downloads/allitems.txt.Z
wget http://cve.mitre.org/data/downloads/allitems.xml.Z
#wget http://cve.mitre.org/data/downloads/allitems.csv.gz
#wget http://cve.mitre.org/data/downloads/allitems.html.gz
#wget http://cve.mitre.org/data/downloads/allitems.txt.gz
#wget http://cve.mitre.org/data/downloads/allitems.xml.gz
#wget http://cve.mitre.org/data/downloads/allitems.csv
#curl -o allitems.html http://cve.mitre.org/data/downloads/allitems.html
#wget http://cve.mitre.org/data/downloads/allitems.txt
#wget http://cve.mitre.org/data/downloads/allitems.xml

# Extract *.Z
7za x allitems.csv.Z
7za x allitems.html.Z
7za x allitems.txt.Z
7za x allitems.xml.Z

# Compress by gzip
gzip -c9 allitems.csv > allitems.csv.gz
gzip -c9 allitems.html > allitems.html.gz
gzip -c9 allitems.txt > allitems.txt.gz
gzip -c9 allitems.xml > allitems.xml.gz
