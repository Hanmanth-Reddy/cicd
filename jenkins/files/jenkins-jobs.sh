#!/bin/bash

set -x 

jenkins_home=/var/lib/jenkins

for i in $@
do
		if [ ! -d ${jenkins_home}/jobs/${i} ]
		then
				java -jar ${jenkins_home}/jenkins-cli.jar  -s http://localhost:8080/  create-job ${i}  <  /tmp/${i}_config.xml
		else
				java -jar ${jenkins_home}/jenkins-cli.jar  -s http://localhost:8080/  update-job ${i}  <  /tmp/${i}_config.xml
		fi
done

set +x
