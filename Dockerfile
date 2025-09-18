FROM imbios/bun-node:latest-22-slim

RUN apt-get install tzdata
ENV TZ="UTC"
RUN date

WORKDIR /usr/src/app

COPY ./scripts/* .
RUN chmod +x ./install-chrome.sh && chmod +x ./install-camoufox.sh

RUN ./install-chrome.sh
RUN ./install-camoufox.sh


