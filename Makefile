.POSIX:
.PHONY: *


default: mac

fedora: make -C fedora

mac: 
	sh ./mac/install.sh
