##################
# docker hub pull
##################
docker run --publish=7474:7474 --publish=7687:7687 --volume=$HOME/neo4j/data:/data neo4j


##################
# docker hub push
##################
docker pull nginx:1.19
docker tag nginx:1.19 <replace with dockerid>/mynginx:v1
docker push <replace with dockerid>/mynginx:v1


########################
# host private registry
########################
docker run -d -p 5000:5000 --restart always --name registry registry:2
# open http://localhost:5000/v2/_catalog
docker tag <replace with dockerid>/mynginx:v1 localhost:5000/mynginx:v1
docker push localhost:5000/mynginx:v1
# open http://localhost:5000/v2/_catalog and verify the image


########################
# setup apache2
########################
docker run -it -p 8080:80 debian
# verify no apache2 at http://localhost:8080 
# run inside container
apt-get update
apt-get install apache2
service apache2 start 
# verify apache2 started http://localhost:8080 
exit
# container exited


########################
# mount a volume
########################
mkdir /tmp/busybox
docker run -it -v /tmp/busybox:/data busybox sh
# run inside container
touch /data/abc.txt 
ls /data # verify file
exit
# container exited
docker ps -a # to verify that container has exited
docker run -it -v /tmp/busybox:/data busybox sh # start a new container
# run inside container
ls /data # verify file
exit
# container exited
ls /tmp/busybox # to verify file on the host


########################
# modify a file
########################
docker run -d -p 8080:80 httpd
docker exec -it <container id/name> bash
# run inside container
apt-get update && apt-get install nano
nano /usr/local/apache2/htdocs/index.html # edit file and save changes
# verify changes in index.html at http://localhost:8080 
