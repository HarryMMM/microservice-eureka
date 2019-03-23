#!/bin/sh
mvn package -DskipTests
git add .
git commit -m "commit"
git push