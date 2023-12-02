#!/bin/bash
cd /content
rm -r taocpsat-*.zip knuth prog
wget -nc --quiet https://taocp-fun.gitlab.io/v4f6-sat-tut/taocpsat-knuth-linux64-bin.zip

unzip -q taocpsat-knuth-linux64-bin.zip
wget -nc --quiet https://taocp-fun.gitlab.io/v4f6-sat-tut/taocpsat-prog.zip
unzip -q taocpsat-prog.zip

mkdir -p /opt/bin
mv knuth/bin/* /opt/bin/
chmod +x /opt/bin/*

apt --yes install openjdk-8-jre-headless
apt --yes install scala 
cd prog
mkdir target
scalac -d target/taocpsat-1.0.jar src/main/scala/*.scala
exit 0

