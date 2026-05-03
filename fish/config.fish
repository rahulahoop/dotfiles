/opt/homebrew/bin/brew shellenv | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $HOME/go/bin
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and jenv init - | source
set -x MANPAGER 'nvim +Man!'

# Added by `rbenv init` on Tue Mar 10 23:21:02 CDT 2026
status --is-interactive; and rbenv init - --no-rehash fish | source
