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

Hint: To use the last command, you  need to run
```
export TERM=linux 
export TERMINFO=/etc/terminfoarm
```
This is already part of the Dockerfile, but it doesn't work with Docker 1.12 in this way. 
However, Docker 1.13 fixes this and there shouldn't be any problem :-)