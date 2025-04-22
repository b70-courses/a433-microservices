# Building docker image
sudo docker build -t item-app:v1 .
sudo docker images

# Make image reference & upload to Docker hub
sudo docker tag item-app:v1 edgarcornelius/item-app:v1
sudo docker push edgarcornelius/item-app:v1
sudo docker images

# Make image reference & upload to Github Container Registry (WIP)
sudo docker tag item-app:v1 ghcr.io/b70-courses/item-app:v1
sudo docker push b70-courses/item-app:v1
sudo docker images