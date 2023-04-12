#!/bin/bash

# Useful for setting the title of xterms
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

# Is git available?
which git &>/dev/null

# If git is not available then set up our prompt
if [ $? -ne 0 ] ; then

	if [ $UID = "0" ] ; then
		# Prompt is red
		PS1="\n\[\033[1;31m\][\u@\h:\w]\\$\[\033[0m\] "
	else
		# Prompt is green
		PS1="\n\[\033[1;32m\][\u@\h:\w]\\$\[\033[0m\] "
	fi

fi
