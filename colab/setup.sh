#!/bin/bash
cd /content
rm -r taocpsat-*.zip knuth prog
wget http://bach.istc.kobe-u.ac.jp/lect/taocp-sat/taocpsat-knuth-linux64-bin.zip
unzip taocpsat-knuth-linux64-bin.zip
wget http://bach.istc.kobe-u.ac.jp/lect/taocp-sat/taocpsat-prog.zip
unzip taocpsat-prog.zip

mkdir -p /opt/bin
mv knuth/bin/* /opt/bin/
chmod +x /opt/bin/*

apt --yes install openjdk-8-jre-headless
apt --yes install scala 
cd prog
mkdir target
scalac -d target/taocpsat-1.0.jar src/main/scala/*.scala
exit 0

