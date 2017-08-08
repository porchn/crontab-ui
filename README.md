# crontab-ui
crontab-ui on docker

*run command in containner
```
docker exec CONTAINER-NAME minicron db setup
docker exec CONTAINER-NAME minicron server start
```
copy sshkey on 127.0.0.1:9292/host to root@container/.ssh/authorized_keys
*run ssh on contailner
```
ssh root@containerip 
```
