# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
alias scala='JAVA_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled" scala'

#if [ "$DISPLAY" != "" ]
#then
#	SSH_ASKPASS=/usr/bin/x11-ssh-askpass
#	export SSH_ASKPASS
#fi
eval $(keychain --eval --quiet --noask --timeout 720 id_rsa)

if shopt -q login_shell
then
  fish -li && exit
else
  fish -i
  exit
fi

