FROM debian:jessie
MAINTAINER dan@typeamachines.com

RUN apt-get update && apt-get install -y \
	debootstrap \
	qemu-user-static \
	qemu \
	git \
	sudo \
	make

COPY ./ /app
WORKDIR /app
RUN scripts/install_dependencies.sh
