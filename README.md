build:
```
docker build -t my:torRelay .
```

run:
```
docker run -d -P my:torRelay
```

connect to bash:
```
docker exec -it <containerID> bash
```

show statistics:
```
sudo arm
```
