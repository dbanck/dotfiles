fish_config theme choose "DraculaOfficial"

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -x GOPATH ~/go

set -x PATH /usr/local/sbin ~/.rbenv/shims $PATH ~/Applications/bin ~/.npm/bin ~/.cargo/bin
set -x PATH $GOPATH/bin $PATH 

set -x EDITOR /usr/local/bin/vim

starship init fish | source
op completion fish | source
source ~/.config/op/plugins.sh
