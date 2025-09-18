build:
	docker build -t browser .

enter: 
	docker run --rm -it -e DISPLAY=$$(DISPLAY) -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash
