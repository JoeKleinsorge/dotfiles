.POSIX:
.PHONY: *


default: mac terminal github

mac: 
	sh ./mac/install.sh
	sh ./mac/set-defaults.sh

terminal:
	sh ./terminal/link.sh

github:
	sh ./github/download_repos.sh
