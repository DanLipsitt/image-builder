# rootfs directory
deploy/$(CFG)-$(BUILD_DATE):
	./RootStock-NG.sh -c $(CFG)

docker_build:
	docker build -t image-builder:x86 .
