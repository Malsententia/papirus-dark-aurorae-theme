INSTALLDIR = $(DESTDIR)/usr/share/aurorae/themes/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)PapirusDark{,-Transparent}
local:
	find PapirusDark{,-Transparent} -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
