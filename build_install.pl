#!/usr/bin/perl

use warnings;
use strict;

MAIN: {
	# Delete old install:
	#`rm -rf ~/.juniper_networks && rm -rf ~/.local/share/applications/jhpulse.desktop && rm -rf ~/.jhpulse`;

  # Create .jhpulse directory and copy the files in
  `mkdir -p ~/.jhpulse`
  `cp jhpulse/* ~/.jhpulse`

	# Check for required packages and install if necessary.
	#my @packages = ('curl', 'firefox', 'gcc-multilib', 'libc6:i386', 'zlib1g:i386', 'libgtk2-perl', 'libwww-perl', 'tar', 'wget', 'unzip');
	#for my $package (@packages) {
		#my $check = `dpkg -s $package 2>/dev/null | grep Status`;
		#chomp $check;
		#if ($check eq '') {
			#print "Missing package $package.\n Installing...\n";
			#`sudo apt-get -y install $package`;
		#}
	#}

	# Compile ncui
	`cd ~/.jhpulse && gcc -m32 -Wl,-rpath,\`pwd\` -o ncui libncui.so`;

	# Set ownership/permissions on files.
	my $username = $ENV{LOGNAME} || $ENV{USER} || getpwuid($<);
	`sudo chown -R $username ~/.jhpulse`;
	`sudo chmod -R 500 ~/.jhpulse`;
	`sudo chown root:root ~/.jhpulse/ncsvc`;
	`sudo chown root:root ~/.jhpulse/ncui`;
	`sudo chmod 4711 ~/.jhpulse/ncsvc`;
	`sudo chmod 4711 ~/.jhpulse/ncui`;
	`sudo chmod g+s ~/.jhpulse/ncsvc`;
	`sudo chmod g+s ~/.jhpulse/ncui`;
	`chmod u+w ~/.jhpulse/jhpulse.log`;
	`chmod 600 ~/.jhpulse/DSID`;
	`chmod u+w ~/.jhpulse`;

	# Create link to messed up hardcoded ncsvc log to the proper directory
	`ln -s ~/.juniper_networks/network_connect/ncsvc.log ~/.jhpulse/ncsvc.log`;	

	# Remove "installer", run JHPulse.
	`perl ~/.jhpulse/jhpulse`;

	 print "Installation completed!  You should be able to find JHPulse in your application menu.\n\n";	
}

