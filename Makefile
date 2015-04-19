BIN_DIR := "/usr/bin/"
DESKTOP_DIR := "/usr/share/applications/"

default:
	@echo "Please run 'make install' to install WoWUtils, or 'make uninstall' to remove it."

install:
	cp wowutils $(BIN_DIR)
	cp wowutils.desktop $(DESKTOP_DIR)
	update-desktop-database $(DESKTOP_DIR)

uninstall:
	rm $(BIN_DIR)wowutils
	rm $(DESKTOP_DIR)wowutils.desktop
	update-desktop-database $(DESKTOP_DIR)
