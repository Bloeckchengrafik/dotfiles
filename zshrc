export PATH=$PATH:~/go/bin:~/.local/bin:/home/user/.cargo/bin:$HOME/bin:/usr/local/bin

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='mvim'

eval `ssh-agent` > /dev/null
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1

alias "tunnel=ngrok http --domain=gladly-exciting-phoenix.ngrok-free.app"
alias "tunnel-mc=ngrok tcp 25565"
alias "glg"="git log --oneline --all --graph"

eval $(thefuck --alias)

function icat() {
  kitty +kitten icat "$@"
  stty sane
}

xcat() {
    if [ $# -ne 1 ]; then
        echo "Usage: xcat <log_file.gz>"
        return 1
    fi

    log_file="$1"

    if [ ! -e "$log_file" ]; then
        echo "Error: File not found - $log_file"
        return 1
    fi

    # Check if the file has a .gz extension
    if [[ "$log_file" != *.gz ]]; then
        echo "Error: Input file is not a .log.gz file"
        return 1
    fi

    # Extract the log file
    gunzip -c "$log_file" > "${log_file%.gz}"

    # Display the content of the extracted file
    cat "${log_file%.gz}"

    return 0
}
