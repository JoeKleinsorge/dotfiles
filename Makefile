.POSIX:
.PHONY: *


default: mac, terminal, github

fedora: make -C fedora

mac: 
	sh ./mac/install.sh

terminal:
	sh ./terminal/link.sh

github:
	sh ./github/download_repos.sh