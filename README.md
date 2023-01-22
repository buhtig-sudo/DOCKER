[Interacting with the container via volumes and ports](https://devopswithdocker.com/part-1/5-volumes-and-ports)
### example:
`docker run  -v "$(pwd)/log/log.txt:/usr/src/app/text.log" devopsdockeruh/simple-web-service`