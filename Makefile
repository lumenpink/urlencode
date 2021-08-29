PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	$(info Installing the library to $(BINDIR))
	@install -Dm755 ./urlencode.sh  $(BINDIR)/urlencode

uninstall:
	$(info Removing library from $(BINDIR))
	@rm -f $(BINDIR)/urlencode

test:
	$(info Running shellspec tests)
	@rm -rf ./coverage
	@shellspec --kcov

.PHONY: install uninstall test
