# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export PATH=$PATH:$JAVA_HOME/bin
export PATH="/usr/local/mysql/bin:$PATH"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export ANDROID_HOME="~/Library/Android/sdk"
export PATH=$ANDROID_HOME/platform-tools:$PATH
source /Users/evolt-mac-min/robotframework-env/bin/activate

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search aliases encode64 history docker emoji-clock kubectl)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ls="eza --icons=always"
alias chx="chmod +x"
alias cd="z"
alias k='kubecolor'
alias kgp='kubecolor get pod'
alias kg='kubecolor get'
alias kd='kubecolor describe'
alias kgd='kubecolor get deployment'
alias kgsvc='kubecolor get service'
alias kgsec='kubecolor get secret'
alias kdd='kubecolor describe deployment'
alias kdp='kubecolor describe pod'
alias kca='_kca(){ kubecolor "$@" --all-namespaces;  unset -f _kca; }; _kca'

#### autox alias
alias ev-np="aws eks update-kubeconfig --region ap-southeast-1 --name evolt-np-apse1-app-cluster"
alias th-ev-np="aws eks update-kubeconfig --region ap-southeast-7 --name evolt-np-apse7-app-cluster"
alias th-ev-prod="aws eks update-kubeconfig --region ap-southeast-7 --name evolt-prod-apse7-app-cluster"
alias ev-prod="aws eks update-kubeconfig --region ap-southeast-1 --name evolt-prod-apse1-app-cluster"
alias local-kube="kubectl config use-context default"
alias ttl-uat="kubectl config use-context arn:aws:eks:ap-southeast-1:334375151823:cluster/Titleloans-UAT-EKS"
alias ttl-dit="kubectl config use-context arn:aws:eks:ap-southeast-1:334375151823:cluster/Titleloans-DIT-EKS"
#alias kgabnm="echo '==== pods ====' && kubectl get pod -A | grep -E '([0-9]+)/([0-9]+)' | grep -vE '\b([0-9]+)/\1\b|batch' && echo '\n==== deploy ====' &&kubectl get deploy -A | grep -E '([0-9]+)/([0-9]+)' | grep -vE '\b([0-9]+)/\1\b'"

kgabnm() {
    echo "==== Pods ===="
    kubectl get pod $@ | grep -E '([0-9]+)/([0-9]+)' | grep -vE '\b([0-9]+)/\1\b|batch'
    echo "\n==== Deploy ===="
    kubectl get deploy $@ | grep -E '([0-9]+)/([0-9]+)' | grep -vE '\b([0-9]+)/\1\b|batch'
}




eval "$(zoxide init zsh)"

eval "$(fzf --zsh)"

# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{b ash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}


show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# Created by `pipx` on 2024-10-08 08:29:30
export PATH="$PATH:/Users/rim-mc/.local/bin"
alias ktop='kubectl top pod --use-protocol-buffers | awk '\''NR==1{print;next} {printf "%-60s %5d%% %8d%%\n",$1,$2*100/1000,$3*100/1000}'\'' | column -t'
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/evolt-mac-min/.lmstudio/bin"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/evolt-mac-min/.dart-cli-completion/zsh-config.zsh ]] && . /Users/evolt-mac-min/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# Created by `pipx` on 2025-02-26 06:50:12
export PATH="$PATH:/Users/evolt-mac-min/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evolt-mac-min/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/evolt-mac-min/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evolt-mac-min/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/evolt-mac-min/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
#alias liquibase="JAVA_HOME=$(/opt/homebrew/opt/openjdk@17/bin/java) liquibase"
alias kgprc="kubectl get pods -A -o=custom-columns=\"NAMESPACE:.metadata.namespace,NAME:.metadata.name,CPU_REQ:.spec.containers[*].resources.requests.cpu,MEM_REQ:.spec.containers[*].resources.requests.memory\""

source <(jj completion zsh)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
#ulimit -n 65536 65536
#ulimit -n 65536 65536

# Added by Antigravity
export PATH="/Users/evolt-mac-min/.antigravity/antigravity/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin" 
