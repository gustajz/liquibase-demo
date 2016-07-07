### Liquibase Example

Create and start containers
```
docker-compose up -d --force-recreate
```

Enter into liquibase container
```
docker exec -it liquibasedemo_liquibase_1 bash
```

Execute a status and update
```
liquibase --defaultsFile=config/dsv.properties --changeLogFile=changelog/changelog-master.xml status
liquibase --defaultsFile=config/dsv.properties --changeLogFile=changelog/changelog-master.xml update
```

Stop and remove containers, networks, images, and volumes
```
docker-compose down
```