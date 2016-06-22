# rpi-python3 with bluetooth & bluepy running

Raspberry Pi compatible Docker base image with Python 3 and bluepy/bluez/bluetooth preinstalled.

Run all the commands from within the project root directory.

### Build Details
- [Source Repository](https://github.com/don41382/docker-rpi-python3-with-bluetooth)
- [Dockerfile](https://github.com/don41382/docker-rpi-python3-with-bluetooth/blob/master/Dockerfile)
- [DockerHub](https://hub.docker.com/r/don41382/rpi-python3-with-bluetooth/)

#### Run the docker image inside of your raspberry-pi
  1. Follow the instruction from [Hypriot aka the Docker Pirates](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/)
  2. start the docker with bluetooth from host
```bash
docker run -a stdin -a stdout -i -t  -it --net host don41382/rpi-python3-with-bluetooth
```

#### Build the Docker Image
```bash
make build
```

#### Run the Docker Image and get the version of the installed Python
```bash
make version
```

#### Push the Docker Image to the Docker Hub
* First use a `docker login` with username, password and email address
* Second push the Docker Image to the official Docker Hub

```bash
make push
```

## License

"THE BEER-WARE LICENSE" (Revision 42):
Felix Eckhardt wrote this file.  As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return

## Thanks to
* João Sena Ribeiro <sena@smux.net> (Python3 base idea)
* [Hypriot / Docker Pirates](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/) (Raspberry Pi + Docker)
