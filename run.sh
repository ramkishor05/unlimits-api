#!/bin/bash

set -e

cd `dirname $0`
r=`pwd`
echo $r

# server

echo "Starting project brijframework server..."
cd $r/project-brijframework-server
mvn -q clean spring-boot:run &

# auth
echo "Starting project brijframework auth..."
cd $r/project-brijframework-auth
mvn -q clean spring-boot:run &

# crm
echo "Starting project brijframework crm..."
cd $r/project-brijframework-crm
mvn -q clean spring-boot:run &

# item
echo "Starting project brijframework crm..."
cd $r/project-brijframework-item
mvn -q clean spring-boot:run &

# Client
#cd $r/client
#npm install
#echo "Starting Angular Client..."
#npm start
