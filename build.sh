# Build the angular application
ng build
# Build the docker image
docker build -t myimage -f nginx.Dockerfile . 
# run the docker image and expose it to port 80
docker run -p 80:80 -it myimage


############## OR #######################

# Build the docker image
docker build -t myimage . 
# run the docker image and expose it to port 80
docker run -p 80:80 -it myimage