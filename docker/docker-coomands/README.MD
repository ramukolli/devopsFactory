	docker run -t -i -p 80:80 hello-world 
To expose container port to host port. So that by using host port we can connect to our container from browser.        

	docker run --name devopsfactory image_name/image_id
It will assign a name of the container.

	docker run -d imagename/imageid
container starts in background and it will give you terminal to execute other commands.

	docker run -v /tmp:/location_in_your_container image_name
it will map a local directory into the container.

	docker ps 
to show a list of running containers.

	docker ps -a
to show a list of all containers whether they are running, exited and stopped.

	docker rm container 
to delete a container

	docker rm -f container
to delete a running container forcefully without stopping. Normal cases we have to stop and then remove container

	docker container prune
to delete stopped container

	docker stop container_id
to stop the running container

	docker cp container_id:/path_to_file  host_path 
to copy a file from container to host

	docker cp host_path container_id:/path_to_file  
copy a file from the host to a container

	docker exec -it container bash
to enter into running container

	docker rename old_name new_ name
to change the name of the container

	docker pull image name
download an image into ec2 machine


	docker push image
upload an image into repo

	docker rmi image
delete an image

	docker images
show a list of all images

	docker image prune 
Remove all dangling images

	docker image prune -a
Remove all dangling images and also remove all images not referenced by any container

	docker build -t tag_name .
to build and tag image from docker file

	docker save image > file.tar
save a image to .tar file

	docker load  -i tarfile
load an image from a .tar file

	docker logs container id 
show the logs of a container

	docker port container
show mapped ports of a container
	docker top container_id
to show top running processes inside your container

	docker commit container_id
To create image from a container.










