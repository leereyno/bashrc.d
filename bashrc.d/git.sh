#!/bin/bash

# Set up git command line resources if the git command is available
which git &>/dev/null

# If the git command is available
if [ $? -eq 0 ] ; then
	if [ -e ~/resources_git/bash_profile_git ] ; then
		source ~/resources_git/bash_profile_git
	fi
fi
