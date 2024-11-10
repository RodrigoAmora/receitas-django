#!/bin/bash

#############################################
### Shellscript to up Docker's containers ###
#############################################

echo -e "\033[01;32m##############\033[01;32m"
echo -e "\033[01;32m### Docker ###\033[01;32m"
echo -e "\033[01;32m##############\033[01;32m"
echo -e "\n"

docker_image=$(docker images web-django)

if [[ ! -z "${docker_image}" ]]; then
	echo -e "\033[01;32mApagando imagem que roda a aplicação....\033[01;32m"
	echo -e "\n"
	docker rmi -f $docker_image
	echo -e "\n"
fi

echo -e "\n\n"
echo -e "\033[01;32m###########################\033[01;32m"
echo -e "\033[01;32m### Building containers ###\033[01;32m"
echo -e "\033[01;32m###########################\033[01;32m"
echo -e "\n\n"

sudo docker-compose build

echo -e "\n\n"
echo -e "\033[01;32m########################\033[01;32m"
echo -e "\033[01;32m### Uping containers ###\033[01;32m"
echo -e "\033[01;32m########################\033[01;32m"
echo -e "\n\n"

sudo docker-compose up -d
