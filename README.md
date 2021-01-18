![Session Messenger](https://getsession.org/wp-content/uploads/2019/12/sitelogo-1.png)

# Why did I make this? 🤔

To help you install and uninstall [Session](https://getsession.org) on non-Debian-based distros easier!

This repository is **malware-free** and it's just a few simple codes! The `Session` file (format `.AppImage`) is downloaded directly from [GetSession.org/download](https://getsession.org/download). 

# How to use
Just ensure that `wget` is installed. Then open Terminal and type:

    git clone https://github.com/gitkern3l/Session-Installer Session
    cd Session
    make
    sudo make install

Type `sudo make uninstall` to uninstall Session.

If you want to remove all Session's configurations of the current Linux user, just type:

`make clean`

To update Session to lastest version, enter these commands:
    
    cd Session
    sudo make update

Have fun chatting privately : ) 👍
