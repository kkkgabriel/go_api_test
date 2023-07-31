# docker cmds to start
```
docker build -t go_api .
docker run -p 8080:8080 --name go_test go_api
```

# access api
```
curl http://localhost:8080
```
