#!/usr/bin/make -f
THEME = "com.manjaro.mono.splash"
PREFIX = /usr
INSTALLDIR = $(DESTDIR)/$(PREFIX)/share/plasma/look-and-feel/
RM = rm -rf
INSTALL = install -Dm644

install:
	find $(THEME) -type f -exec $(INSTALL) '{}' "$(INSTALLDIR)/{}" \;
uninstall: 	
	$(RM) $(INSTALLDIR)/$(THEME)
