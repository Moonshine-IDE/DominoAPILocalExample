#!/bin/sh

# Run "gradle clean build" to build the JAR
export DYLD_LIBRARY_PATH="/Applications/HCL Notes.app/Contents/MacOS/"
export JAVA_HOME=~/Downloads/MoonshineSDKs/Java/openjdk-1.8.0
$JAVA_HOME/bin/java -jar build/libs/DominoAPILocalExample.jar
