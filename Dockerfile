FROM pataquets/ubuntu:trusty

# Base 'libav-tools' package image.

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
		apt-get install -y \
			libav-tools gpac \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/
