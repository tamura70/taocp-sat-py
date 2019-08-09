#!/bin/bash
cd /content
mkdir -p /opt/bin
wget http://bach.istc.kobe-u.ac.jp/lect/taocp-sat/taocpsat-knuth-linux64-bin.zip
unzip taocpsat-knuth-linux64-bin.zip
mv knuth/bin/* /opt/bin/
chmod +x /opt/bin/*
wget http://bach.istc.kobe-u.ac.jp/lect/taocp-sat/taocpsat-prog.zip
unzip taocpsat-prog.zip
apt --yes install openjdk-8-jre-headless
apt --yes install scala 
cd prog
mkdir target
scalac -d target/taocpsat-1.0.jar src/main/scala/*.scala
exit 0

