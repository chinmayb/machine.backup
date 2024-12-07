export PATH="$PATH:/User/cbharadwaj/go/bin/:/Users/cbharadwaj/work/bin:/usr/local/go/bin:/opt/homebrew/bin:/Users/cbharadwaj/.local/bin"

export ibctopath=/Users/cbharadwaj/work/codespace/
export dc=${ibctopath}/deployment-configurations

export HELM_HOME=~/.helm
export GIT_TERMINAL_PROMPT=1

# colors
autoload -U compinit && compinit
CLICOLOR=1
#force_color_prompt=yes
#RPROMPT="[%D{%f/%m/%y} | %D{%L:%M:%S}]"
#RPROMPT="%F{219}[%D{%d/%m/%y %H:%M:%S}]%f"

# go load
export GOBIN="/Users/cbharadwaj/go/bin"
~/.gorc
export GOPATH="/Users/cbharadwaj/go/"

alias sa='grep -rnw ${ibctopath} --exclude-dir={*vendor,.git} --exclude=*.js -e'
#alias aws='docker run -v ~/.aws:/root/.aws  -i --rm cgswong/aws:latest aws'
alias s3='docker run -e AWS_REGION=${AWS_REGION} -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} -i --rm infoblox/s3cmd:v2.0.2-029489f s3cmd'
alias screen=/usr/local/bin/screen
alias k='kubectl -n ngp-cp'
alias cdw='cd ${ibctopath}'
alias ki='kubectl -n infoblox'
alias kgs='kubectl get secret'
alias kgpo='kubectl -n ngp-cp get po'
alias watchffo='k -n atlas-app-def-system get featureflagoverrides -w'
alias getversions='k -n atlas-app-def-system get versions'
alias getapplications='k -n atlas-app-def-system get applications'
alias ffos='k -n atlas-app-def-system get featureflagoverrides'
alias editffo='k -n atlas-app-def-system edit featureflagoverrides'
alias editversion='k -n atlas-app-def-system edit version'
alias gets2s='k -n identity get secret identity-svc-svc-secret -ojsonpath={.data.svc-svc-jwt} | base64 -d'
alias meld='/Applications/Meld.app/Contents/MacOS/Meld'
alias kcd='kubectl -n cloud-discovery'
alias kd='kubectl -n ddi'
alias kp='kubectl -n cloud-proxy'
alias kr='kubectl -n ricketts'
alias kc='kubectl -n chronos'
alias ke='kubectl -n ddiaas-endpoint-config-manager'

export do="--dry-run=client -o yaml"    # k create deploy nginx --image=nginx $do
export now="--force --grace-period 0"   # k delete pod x $now

#alias vm1='cd ~/Work/Vagrant/onprem1/ && vagrant ssh -c "sudo su"'
#alias vm2='cd ~/Work/Vagrant/onprem2/ && vagrant ssh -c "sudo su"'
alias nios='cd /Users/cbharadwaj/work/nios'


source $HOME/.gitrc
source $HOME/.git-completion.bash
source $HOME/.zshrc-oh-my-shz
PROMPT='$(kube_ps1)'$PROMPT
export HISTTIMEFORMAT='%F %T '
alias excel='open -a /Applications/Microsoft\ Excel.app'

alias box='aws configure sso --profile eng-dev --no-browser'
alias box4='aws --profile eng-dev eks update-kubeconfig --region us-east-1 --name box-4 --alias box-4'
alias boxlogout='aws sso logout'
alias whatismyip='dig @ns1.google.com TXT o-o.myaddr.l.google.com +short'
#test -e /Users/cbharadwaj/.iterm2_shell_integration.zsh && source /Users/cbharadwaj/.iterm2_shell_integration.zsh || true

alias digclean='dig +nostats +nocomments +nocmd'
alias gti='git'

#chruby
#
#source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
#PS1='$(kube_ps1)'$PS1
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.0

alias python=python3
