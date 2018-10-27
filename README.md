# liquidiot-docker

This project is for dockerising the Liquid-IoT project. Liquid-IoT has three main components: IDE, Resource Registry (RR), and Runtime Environment (RE).

## Project Road Map

Docker compose is used to launch all three (IDE, RR, and RE) components. Each component will be a service in docker-compose. These services will communicate in their own network so that they can reach each other. 

## Project Status

Currently only IDE is dockerised. Two other components (RR and RE) are on TO-DO list.

## Project Components

### IDE

IDE itself has two components: Application and MongoDB. These two services are defined in the docker-compose.yml file. They are operating in the *liquid-iot* netwok.

### RR

On TO-DO list.

### RE

On TO-DO list.

## How to install?

1. Clone the project:

            git clone https://github.com/farshadahmadi/liquidiot-docker.git`
                     
2. Navigate to it:

            cd liquidiot-docker
            
3. run

            sudo docker-compose up
            
3. Open the following link in a browser:

            http://localhost:9000
                     
# Useful Docker Commands

## Docker

### Container Related

            docker container ls
            docker container ls -a
            docker container stop container-name
            docker container rm container-name
            docker container rm $(docker container ls -a -q)
            docker exec -it container-name /bin/bash

### Image Related

            docker image ls
            docker image ls -a
            docker image rm image-name
            docker image rm $(docker image ls -a -q)

### Volume Related

            docker volume create volume-name`
            docker volume ls
            docker volume rm volume-name
            docker volume prune
### Network Related

            docker network create -d bridge network-name
            docker network ls
            docker network rm networkname

## Docker Compose

            docker-compose up
            docker-compose up serive-name
            docker-compose up serive-name -d
            docker-compose up --build service-name
            docker-compose up --build service-name -d
            docker-compose down

## Docker Machine

            docker-machine create -d hyperv --hyperv-virtual-switch "name of the virtual switch" name-of-the-machine
