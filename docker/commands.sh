docker pull nginx # pull latest nginx
docker pull nginx:1.18.0 # pull version 1.18.0 nginx
docker images # show all images
docker ps # list running containers
docker ps -a # list all containers (running or stopped)
docker inspect nginx # inspect details of latest nginx image
docker inspect <replace with container id> # inspect details of container with container id
docker login # login to docker hub account
docker logout # logout from docker account
docker run -p nginx # run nginx container instance from latest nginx image 
docker run -p 8080:80 nginx # run a container from latest nginx image, mapping port 80 of container to 8080 on localhost
docker run -e var1=value1 -e var2=value2 nginx # run a container with env variables var1 and var2
docker run -d -p 8080:80 nginx # run nginx container in detached mode
docker run -it -p 8080:80 nginx # run container in interative mode, nginx will start in this case
docker run -it -p 8080:80 nginx /bin/bash # run container in interative mode, nginx will NOT start in this case
docker run -it busybox sh # run a busybox container in interative mode
docker stop <container id/name> # stop a running container
docker attach <container id/name> # attach to container started in interactive mode which was detached previously
docker exec -it <container id/name> bash # start a bash shell inside a running nginx container
docker tag nginx custom-nginx:v1.0 # tag latest nginx image with name custom-nginx and tag v1.0
docker tag nginx:1.18.0 custom-nginx:v18.0 # tag nginx 1.18.0 image with name custom-nginx and tag v18.0
docker tag nginx:1.18.0 mydockerhubid/custom-nginx:v18.0 # tag nginx 1.18.0 image with docker hub id and tag v18.0
docker tag nginx:1.18.0 mydockerhubid/custom-nginx:v18.0 # tag nginx 1.18.0 image with docker hub id and tag v18.0
docker tag nginx:1.18.0 my.domain.org/custom-nginx:v18.0 # tag nginx 1.18.0 image with private registry domain name and tag v18.0
docker push mydockerhubid/custom-nginx:v18.0 # push an image with tag to docker hub repository 'mydockerhubid' 
docker push myregistry.io/myapp:v1 # push image with tag to repository at host myregistry.io
docker rmi custom-nginx:v1.0 # remove image
docker rmi nginx --force # remove an image in use by a container by force
docker logs <container id/container name> # view logs of a running container
docker logs brave_allen # view logs of a running container with name brave_allen
docker logs -f brave_allen # view and tail the logs of a running container with name brave_allen
docker build . # user dockerfile in current directory to build an image
docker build . –t myimage:v1 # user dockerfile in current directory to build an image and tag it with myimage:v1
docker history <image name> # Show history of changes for an image
docker image prune # clean up unused images i.e. with no containers with a single command. 
docker container prune # cleanup stopped containers with single command to free up space.
docker diff <container id> # filesystem changes between container and image. 
docker stats # docker processes and resource usage updated live 
docker top <container id/name> # display running processes for a container
docker diff <container id/name> # kill a docker container if graceful shutdown is not possible 
docker rename <old name> <new name> # rename an existing container
docker update --restart always nginx # update the configuration of a running container
docker save <image name:tag> > file.tar # save image to a tar file with all the layers, tags and history
docker load < file.tar # loads the saved image back into your list of images
docker export [nginx container id] > nginx.tar # dumps of a running or stopped container filesystem to a tar archive without any metadata, history or layers
docker import nginx.tgz # imports exported file system as docker image. 
docker cp <container id>:<path> <host path> # copy from container to host
docker cp <host path> <container id>:<path> # copy from host to container






