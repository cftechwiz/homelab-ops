export PATH=$HOME/bin:$HOME/library/Python/3.8/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# command -v flux >/dev/null && . <(flux completion zsh)

eval "$(direnv hook zsh)"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git aws brew cask docker docker-compose gradle helm kubectl npm node python sublime gcloud taskwarrior)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"export PATH="/usr/local/sbin:$PATH"
alias ports="sudo lsof -PiTCP -sTCP:LISTEN"

#Istio Aliases
alias ii='istioctl install --set'
alias iu='instioctl x uninstall --purge'
alias klan='function _(){kubectl label namespace $1 istio-injection=enabled}; _'
alias ia='istioctl analyze'
alias igs='kubectl get svc istio-ingressgateway -n istio-system'
alias igd='kubectl -n istio-system get deploy'
alias iis='kubectl -n istio-system get IstioOperator installed-state -o yaml > installed-state.yaml'
alias ipl='istioctl profile list'
alias ipd='istioctl profile dump'
alias ipdif='istioctl profile diff'
alias ipdig='istioctl profile dump --config-path components.ingressGateways'
alias ipdigv='istioctl profile dump --config-path values.gateways.istio-ingressgateway'
alias kgka='kubectl get kustomizations -A'
alias s1='ssh cfallwell@server1'
alias s2='ssh cfallwell@server2'
alias s3='ssh cfallwell@server3'
alias v1='ssh cfallwell@pulse-val-01'
alias fsus='function s(){ flux suspend hr $1 --namespace $2}; s'
alias fres='function r(){ flux resume hr $1 --namespace $2}; r'
alias kexec='function a(){ kubectl exec --stdin $1 -- /bin/bash}; a'
alias ti='terraform init -auto-approve'
alias tia='terraform init && terraform apply -auto-approve'
alias taa='terraform apply -auto-approve'
alias tda='terraform destroy -auto-approve'
