# basic aliases
alias l="ls -lh --group-directories-first --color=auto"
alias ls="ls --group-directories-first --color=auto"
alias ll="ls -lah --group-directories-first --color=auto"
alias pwgen="pwgen -yc 16"
alias issh="ssh -o StrictHostKeychecking=no -o UserKnownHostsFile=/dev/null"
alias vi="nvim"
alias scm="cd ${HOME}/scm"
alias tmp="cd ${HOME}/tmp"
alias cat="batcat -p"
alias fd="fdfind"

# kubernetes
alias k=kubectl
alias kca='kubectl get pods --all-namespaces -o wide'
complete -o default -F __start_kubectl k
