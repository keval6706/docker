## Docker commands

```bash
# building and starting docker
$ docker compose --env-file .env up -d

# removing the docker
$ docker compose down -v
```

```
username: enterprise_search
password: m6ie3p5xmkr7ogns

secret_session_key: ea09d5b390ef1fafd1c8b3e74894acdf9d48a9127b8c7b161d3d6adc8ed3c9ddde4539d77d616690f560c9e1a9cefdd6c072f792b530ef9e6d36cea3b7c4bd57
```

```
docker-compose -f docker-compose-mongodb.yml -p mongodb-container up -d
```