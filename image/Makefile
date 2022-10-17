.POSIX:
.PHONY: default init build

default: init build

OPNsense-22.7-OpenSSL-dvd-amd64.iso.bz2:
	aria2c \
		--console-log-level=warn \
		--max-connection-per-server=16 \
		--split=16 \
		https://mirror.ams1.nl.leaseweb.net/opnsense/releases/22.7/OPNsense-22.7-OpenSSL-dvd-amd64.iso.bz2

OPNsense-22.7-OpenSSL-dvd-amd64.iso: OPNsense-22.7-OpenSSL-dvd-amd64.iso.bz2
	bunzip2 --keep OPNsense-22.7-OpenSSL-dvd-amd64.iso.bz2

init:
	packer init .

build: OPNsense-22.7-OpenSSL-dvd-amd64.iso
	packer build opnsense.pkr.hcl
