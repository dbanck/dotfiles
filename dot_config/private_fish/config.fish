fish_config theme choose "DraculaOfficial"

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -x GOPATH ~/go

set -x PATH $GOPATH/bin $PATH ~/Applications/bin ~/.npm/bin ~/.cargo/bin
# Add the shims to the end of PATH as fallback for VS Code
set -x PATH $PATH ~/.local/share/mise/shims

set -x EDITOR /opt/homebrew/bin/vim

if status is-interactive
    # Commands to run in interactive sessions can go here
    /opt/homebrew/bin/brew shellenv | source
    starship init fish | source
    op completion fish | source
    source ~/.config/op/plugins.sh
end
