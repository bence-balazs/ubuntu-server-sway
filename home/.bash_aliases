# basic aliases
alias l="ls -lh --group-directories-first --color=auto"
alias ls="ls --group-directories-first --color=auto"
alias ll="ls -lah --group-directories-first --color=auto"
alias pwgen="pwgen -yc 16"
alias issh="ssh -o StrictHostKeychecking=no -o UserKnownHostsFile=/dev/null"
alias vi="vim"
alias lg="lazygit"
alias scm="cd ${HOME}/scm"
alias tmp="cd ${HOME}/tmp"
alias cat="batcat -p"
alias fd="fdfind"
alias p="python3"
alias pv="source .venv/bin/activate"
alias pvc="source .venv/bin/activate && code ."
alias gs="git status"
alias gpt-start="docker start ollama open-webui && docker ps"
alias gpt-stop="docker stop ollama open-webui && docker ps"
alias code="code --disable-gpu"
alias cmps="docker compose"
alias s="~/.config/scripts/bssh_glibc"
alias tmux="tmux new-session -s $(hostname)"

# kubernetes
alias k=kubectl
alias kca='kubectl get pods --all-namespaces -o wide'
complete -o default -F __start_kubectl k
