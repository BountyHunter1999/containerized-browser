build:
	docker build -t browser .

enter: 
	docker run --rm -it -e DISPLAY=$$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash

test_camoufox:
	docker run --rm -it -e DISPLAY=$$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash -c "/usr/src/app/venv/bin/camoufox test"
