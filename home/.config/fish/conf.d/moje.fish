alias gs "git status"
alias gd "git diff"
alias POGODA "curl http://wttr.in/warsaw"
alias man "env LANG=en_US man"

#set -ex GREP_OPTIONS

set -x JREBEL_HOME /home/bartek/Soft/jrebel
set -x GOPATH /home/bartek/sandbox/go
set -x GOROOT /home/bartek/Soft/go

eval (thefuck --alias | tr '\n' ';')
