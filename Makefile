build:
	docker build -t browser .

enter:  build
	docker run --rm -it -e DISPLAY=$$DISPLAY  -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash

# For python based installation
# @docker run --rm -it -e DISPLAY=$$DISPLAY -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash -c "/usr/src/app/venv/bin/camoufox tests"
test_camoufox: build
	@docker run --rm -it -e DISPLAY=$$DISPLAY -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash -c "camoufox-js tests"

run_server: build
	@docker run --rm -it -e DISPLAY=$$DISPLAY -v $$pwd/tests:/usr/src/app/tests -v /tmp/.X11-unix:/tmp/.X11-unix browser:latest bash -c "npx run tests/launch_server.js"
