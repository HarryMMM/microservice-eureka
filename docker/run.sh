#!/bin/bash
JAVA_OPTS=${JAVA_OPTS}
OLD_IFS="$IFS"
IFS=","
arr=(${JAVA_OPTS})
IFS="$OLD_IFS"
JAVA_ARR=""
for str in ${arr[@]}
do
JAVA_ARR="$JAVA_ARR -D$str"
done
java -jar  ${JAVA_ARR} app.jar
