
set -e

cd `dirname $0`
r=`pwd`
echo $r

cd ./point-of-sale-server
call cmd /c mvn -q clean install spring-boot:run &

cd ..
cd ./point-of-sale-auth
call cmd /c mvn -q clean install spring-boot:run &

cd ..
cd ./point-of-sale-crm
call cmd /c mvn -q clean install spring-boot:run &

cd ..
cd ./point-of-sale-item
call cmd /c mvn -q clean install  spring-boot:run &

cd ..
cd ./point-of-sale-ordering
call cmd /c mvn -q clean install spring-boot:run &

cd ..
cd ./point-of-sale-payment
call cmd /c mvn -q clean install spring-boot:run &