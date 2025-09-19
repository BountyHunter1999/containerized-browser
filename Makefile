build:
	docker build -t browser .

enter: 
	docker run --rm -it -e DISPLAY=$$DISPLAY  -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash

test_camoufox:
	docker run --rm -it -e DISPLAY=$$DISPLAY -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash -c "/usr/src/app/venv/bin/camoufox tests"

run_server:
	docker run --rm -it -e DISPLAY=$$DISPLAY -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash -c "node tests/launch_server.js"