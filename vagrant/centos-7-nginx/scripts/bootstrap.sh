#!/usr/bin/env bash

# Installing and starting nginx
yum install epel-release -y
yum install nginx
systemctl start nginx
# Installing Oracle Java 8 JDK x64
yum install wget -y
wget -c --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.rpm" --output-document="jdk-8u73-linux-x64.rpm"
rpm -Uvh jdk-8u73-linux-x64.rpm
export JAVA_HOME=/usr/java/default
