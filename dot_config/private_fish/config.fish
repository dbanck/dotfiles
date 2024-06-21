fish_config theme choose "DraculaOfficial"

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -x GOPATH ~/go

set -x PATH $GOPATH/bin $PATH ~/Applications/bin ~/.npm/bin ~/.cargo/bin

set -x EDITOR /usr/local/bin/vim

if status is-interactive
    # Commands to run in interactive sessions can go here
    /opt/homebrew/bin/brew shellenv | source
    starship init fish | source
    op completion fish | source
    source ~/.config/op/plugins.sh
end
