#!/bin/sh -ex

cp $HOME/.m2/repository/org/slf4j/slf4j-api/1.8.0-beta1/slf4j-api-1.8.0-beta1.jar target
cp $HOME/.m2/repository/ch/qos/logback/logback-classic/1.3.0-alpha3/logback-classic-1.3.0-alpha3.jar target
cp $HOME/.m2/repository/ch/qos/logback/logback-core/1.3.0-alpha3/logback-core-1.3.0-alpha3.jar target

rm -rf target/classes

java --module-path target --module com.io7m.bugs.logback/com.io7m.bugs.logback.Main
