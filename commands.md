## Create requirement.txt file
```
pip freeze > requirements.txt
```

## Ensure the entrypoint.sh is executable
```
chmod +x ./entrypoint.sh
```

## Run server with background with running
```
docker-compose up -d --build
```