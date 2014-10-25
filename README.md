JHPulse for Linux
=================

This is the JHPulse JHU VPN Client for Linux. It is based on the older [Juniper Networks Connect VPN client](https://github.com/madscientist/msjnc) by [Paul D. Smith](https://github.com/madscientist) and extended by Dmitry Dagunts (https://github.com/ddagunts) for use with the JHPulse VPN and JHU single sign-on authentication.

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

Known Issues
------------

1. Will not work if your home directory is not /home/username/ (very rare).
2. Will not work if your home partition is mounted with nosuid, noexec, etc. (very rare). 
3. Will not work if you don't use Firefox or if Firefox is running in Private Browsing mode. 
4. On occassion one of the VPN programs will not exit cleanly, leaving the network in an unusable state (no DNS). The easiest fix is to disconnect and reconnect your network adapter (wireless or wired).
5. The code is terrible and needs to be cleaned up - if you improve it please share. 
6. I put a rudimentary update check into the script - when you "Connect" the script will 'curl http://engineering.jhu.edu/jhpulse/myversion.txt'. If this integer is of a higher value than the one hardcoded in your script, you will get a window prompting you to update. The only information we can determine from the access logs is 1. the time a VPN connection attempt was made and 2. the IP from which the attempt was made. We can't identify your username, computer name, etc. 

Changelog
---------

#### 10/25/2014 
- Updated Firefox profile parsing for Firefox version 33.0.
- Temporarily disabled system dependency installs.
- Created public repository on github.com for hosting jhpulse-linux, version control history begins with this update.

#### 07/09/2014 
- Improved Firefox profile parsing.
- Firefox is now installed by install scripts. 
- If no token is found VPN opens Firefox and goes to the login page for you. 

#### 06/12/2014 
- Updated to work with Enterprise multi-factor authentication. 

#### 09/13/2013 
- Updated to use new Junos binary and updated this HTML page. 

#### 09/04/2013 
- Changed to use new JHPulse network address. 

#### 05/09/2013 
- Removed broken Desktop shortcut from Ubuntu installer 
- You may be prompted for your password twice during installation. 

#### 03/03/2013 
- Improved Ubuntu install.

License
-------

THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
