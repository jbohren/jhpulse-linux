JHPulse for Linux
=================

This is the JHPulse JHU VPN Client for Linux.

Installation
------------

To install, download or clone this repository and
then run the `build_install.pl` script:

```
cd jhpulse-linux
./build_install.pl
```

The installer needs to set some files to have root
privileges, so you will be asked to enter your
administrator password.

The installer installs to a hidden directory in
your user directory called `~/.jhpulse`. If this
directory already exists, the installer will back
it up as a `tar.gz` archive. The path to the archive
will be printed to the console if it is created.

Usage
-----

Once you have built and installed the JHPulse
client, you can run it either from your system's
application menu, or from the comand line like so:

```
~/.jhpulse/jhpulse
```

Authentication is done through JHU single sign-on,
so you must log into
http://jhpulse.johnshopkins.edu/ with *FireFox* and
login with your JHED information.  Once you have
done this, the `Connect` button should work and you
should have a new network interface called `tun0`.
