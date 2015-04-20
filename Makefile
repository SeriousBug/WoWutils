DESTDIR := /
BIN_DIR := usr/bin
DESKTOP_DIR := usr/share/applications

default:
	@echo "Please run 'make install' to install WoWUtils, or 'make uninstall' to remove it."

install:
	cp "wowutils" "$(DESTDIR)/$(BIN_DIR)"
	cp "wowutils.desktop" "$(DESTDIR)/$(DESKTOP_DIR)"
	@# If installing directly on the system, then update the desktop database
	@# to activate the URI handling.
	-[[ "$(DESTDIR)" = "/" ]] && update-desktop-database "$(DESTDIR)/$(DESKTOP_DIR)"

uninstall:
	rm "$(DESTDIR)/$(BIN_DIR)/wowutils"
	rm "$(DESTDIR)/$(DESKTOP_DIR)/wowutils.desktop"
	@# If uninstalling directly from the system, then update the desktop database
	@# to deactivate the URI handling.
	-[[ "$(DESTDIR)" = "/" ]] && update-desktop-database "$(DESTDIR)/$(DESKTOP_DIR)"
