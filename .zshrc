export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim=nvim
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=~/.local/bin/:$PATH

bindkey -s ^f "tmux-sessionizer\n"

alias out="go build -o ./bin/out ./cmd/main.go && ./bin/out"
alias art="php artisan"
alias sail="./vendor/bin/sail"
