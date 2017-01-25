FROM alpine:latest
MAINTAINER Lrk <sfxelrick@gmail.com>

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk --update add patch
RUN apk --no-cache add make unrar autoconf automake libtool gcc g++ gperf flex \
		bison texinfo gawk ncurses-dev  python-dev python sed git unzip bash \
		help2man wget bzip2 py-serial  
USER daemon

RUN cd ~ && git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
RUN cd esp-open-sdk && make