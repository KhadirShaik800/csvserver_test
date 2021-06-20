# csvserver_test

sudo apt update -y && sudo apt install docker.io -y				-	To Install docker
python3 -m pip install docker-compose						-	To install Docker-Compose
sudo git clone https://github.com/infracloudio/csvserver.git			-	cloning the solution repo
sudo docker pull infracloudio/csvserver:latest 					-	pull csvserver image
cd csvserver && sudo docker run -d --name TEST infracloudio/csvserver:latest 	-	cd to solution dir and run docker container
sudo docker ps -a								-	To check container status
sudo docker logs -f TEST							-	To check the container logs
vi gencv.sh									-	Created shell script go generate rndom number with index
vi Dockerfile									-	Ceated Dockerfile to add missing inputdata file and setup env for border
sudo docker build -t infracloudio/csvserver:v1 .				-	Created nrew docker image with the required changes
sudo docker rm -f TEST								-	Delete the existing failed container
sudo docker run -d -p 9393:9300 --name TEST infracloudio/csvserver:v1		-	Creating new container with latest image
sudo curl http://localhost:9393/ 						-	To get the output

If everyting goes fine, you can see the output a html page with orange broder and the data from inputFile

curl -o ./part-1-output http://localhost:9393/raw				- 	To save save curl output to file (/part-1-output)
sudo docker logs [container_id] >& part-1-logs					-	To save container logs in file (part-1-logs)
udo docker network create csvserver						-	To create seperate network for containers
