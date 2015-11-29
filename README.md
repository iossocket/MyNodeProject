# MyNodeProject
## This is my first docker project, use nodejs.

1. clone the project to your pc;
2. build the docker image by the Dockerfile;
3. run an container with the image: 
   docker run --name "your_container_name" -v /path/to/your/project:/opt/project -d -p 1337:1337 image_name
4. use "curl -i localhost:1337" to check it.
