.POSIX:
.PHONY: default image

default: image

image:
	make -C image
