Run the Dropbox daemon inside a Docker container

First interactive run:
docker run -i -t -e UID=$(id -u) -v ~/.dropbox:/home/.dropbox -v ~/dropbox:/home/Dropbox theball/docker-dropbox

Normal run:
docker run -d -e UID=$(id -u) -v ~/.dropbox:/home/.dropbox -v ~/dropbox:/home/Dropbox theball/docker-dropbox

