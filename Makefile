# https://github.com/gitkern3l/Exodus-Wallet-Installer

PREFIX=/usr
FILE=Session
dir=$(PREFIX)/share/$(FILE)
user=$(shell whoami)

build:
	wget https://getsession.org/linux -O $(FILE)
	chmod +x ./$(FILE)

	@echo
	@echo "Now type sudo make install"
	@echo

install:
	mkdir $(dir)
	mv $(FILE) $(PREFIX)/bin
	cp ./session.desktop $(PREFIX)/share/applications
	cp ./session-desktop.png $(dir)
	

	@echo
	@echo "Session has been installed!"
	@echo

uninstall:
	rm -rf $(dir)
	rm $(PREFIX)/bin/$(FILE)
	rm $(PREFIX)/share/applications/session.desktop

	@echo
	@echo "Session has been uninstalled!"
	@echo

update: uninstall build install

clean:
	if [ $(user) == "root" ]; \
	then \
		rm -rf /root/.config/$(FILE); \
	else \
		rm -rf /home/$(user)/.config/$(FILE); \
	fi
	
	@echo
	@echo "All Session's configurations of user $(user) has been removed!"
