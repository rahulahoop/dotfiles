/opt/homebrew/bin/brew shellenv | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $HOME/go/bin
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and jenv init - | source
set -x MANPAGER 'nvim +Man!'
