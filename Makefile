
.PHONY: update_dotbot setup install base desktop mac lint

install:
	@./install $(ARGS)

update_dotbot:
	@git submodule update --remote dotbot

base: install

desktop: export DOTFILE_GROUPS = base,,desktop,fedora
desktop: install

server: export DOTFILE_GROUPS = base,fedora
server: install

mac: export DOTFILE_GROUPS = base,mac,dev
mac: install

lint:
	@yamllint .
	@find . -type f \( -name '*.sh' -o -name '*.bash' -o -name '*.ksh' -o -name '*.bashrc' -o -name '*.bash_profile' -o -name '*.bash_login' -o -name '*.bash_logout' \) -not -path "./dotbot/*" | xargs shellcheck