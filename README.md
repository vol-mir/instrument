# Yii

## About Project
http://instrument.loc/

## Quick Start
```shell
$ cd instrument
$ sudo docker-compose up --build
$ sudo docker exec -it php74-container-yii bash
```

## Access container
```shell
sudo docker exec -it nginx-container-yii /bin/sh
sudo docker exec -it php74-container-yii bash
```

## Docker command
```shell
sudo docker container stop $(sudo docker container ls -aq)
sudo docker container rm $(sudo docker container ls -aq)
```