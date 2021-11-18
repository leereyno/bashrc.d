#!/bin/bash

# Create our new directory if it does not already exist
if [ ! -d ~/bashrc.d ] ; then
	mkdir -p ~/bashrc.d
fi

# Copy over our new profile files
/bin/cp -av bashrc.d/* ~/bashrc.d/

# Add lines to ~/.bashrc to source our profile files
if [ ! "$(grep BASHRCD ~/.bashrc)" ] ; then
	echo >> ~/.bashrc <<-EOL
		#
		# BASHRCD : https://github.com/leereyno/bashrc.d
		#
		for each in ~/bashrc.d/*.sh ; do
			source $each
		done
	EOL
fi	
