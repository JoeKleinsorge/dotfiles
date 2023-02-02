.POSIX:
.PHONY: *


default: mac, terminal

fedora: make -C fedora

mac: 
	sh ./mac/install.sh

terminal:
	sh ./terminal/link.sh