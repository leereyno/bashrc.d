#!/bin/bash

# Create our new directory if it does not already exist
if [ ! -d ~/bashrc.d ] ; then
	mkdir -p ~/bashrc.d
fi

# Copy over our new profile files

# If we have a directory on the command line, then use it as source
# directory for files
if [ $# -ge 1 ] ; then
	/bin/cp -av ${1}/bashrc.d/* ~/bashrc.d/
	/bin/cp -av ${1}/resources_git ~/
else
	cd $(dirname $0) # go to the directory where install.sh lives
	/bin/cp -av bashrc.d/* ~/bashrc.d/
	/bin/cp -av resources_git ~/
fi

# Add lines to ~/.bashrc to source our profile files
if [ ! "$(grep BASHRCD ~/.bashrc)" ] ; then
	cat <<-EOF >> ~/.bashrc

		#
		# BASHRCD : https://github.com/leereyno/bashrc.d
		#
		for each in ~/bashrc.d/*.sh ; do
		    source \$each
		done

	EOF
fi	
