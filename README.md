
### Build

```
cd liquibase
docker build --force-rm --rm=true -t liquibase .
```

```
cd demo
docker-compose up --force-recreate
docker-compose down
```

```
cd demo/demo_db
docker run -it --rm --name liquibase -v $(pwd):/install -w /install liquibase bash
```
