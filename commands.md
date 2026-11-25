commands:

docker compose up -d

docker compose exec cache redis-cli -a password PING

.\bin\ycsb.bat load redis -s -P .\workloads\workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password"

run this 10 times
.\bin\ycsb.bat run redis -s -P .\workloads\workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password" 

docker compose down -v 