#workload a
docker compose up -d

#test connectivity
docker compose exec cache redis-cli -a password PING

.\ycsb-0.17.0\bin\ycsb.bat load redis -s -P .\ycsb-0.17.0\workloads\workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password"

1..10 | % { 
    .\ycsb-0.17.0\bin\ycsb.bat run redis -s -P .\ycsb-0.17.0\workloads\workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password" >> resultsA.log 
}

docker compose down -v 

#workload b

docker compose up -d

#test connectivity
docker compose exec cache redis-cli -a password PING

.\ycsb-0.17.0\bin\ycsb.bat load redis -s -P .\ycsb-0.17.0\workloads\workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password"

1..10 | % { 
    .\ycsb-0.17.0\bin\ycsb.bat run redis -s -P .\ycsb-0.17.0\workloads\workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password" >> resultsB.log 
}

docker compose down -v 

#workload c

docker compose up -d

#test connectivity
docker compose exec cache redis-cli -a password PING

.\ycsb-0.17.0\bin\ycsb.bat load redis -s -P .\ycsb-0.17.0\workloads\workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password"

1..10 | % { 
    .\ycsb-0.17.0\bin\ycsb.bat run redis -s -P .\ycsb-0.17.0\workloads\workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password" >> resultsC.log 
}

docker compose down -v 

#workload d

docker compose up -d

#test connectivity
docker compose exec cache redis-cli -a password PING

.\ycsb-0.17.0\bin\ycsb.bat load redis -s -P .\ycsb-0.17.0\workloads\workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password"

1..10 | % { 
    .\ycsb-0.17.0\bin\ycsb.bat run redis -s -P .\ycsb-0.17.0\workloads\workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password" >> resultsD.log 
}

docker compose down -v 

#workload e

docker compose up -d

#test connectivity
docker compose exec cache redis-cli -a password PING

.\ycsb-0.17.0\bin\ycsb.bat load redis -s -P .\ycsb-0.17.0\workloads\workloade -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password"

1..10 | % { 
    .\ycsb-0.17.0\bin\ycsb.bat run redis -s -P .\ycsb-0.17.0\workloads\workloade -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.password=password" >> resultsE.log 
}

docker compose down -v 