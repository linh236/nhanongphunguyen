Create project
remove allcontainer: docker rm -vf $(docker ps -a -q)
remove all image: docker rmi -f $(docker images -a -q)