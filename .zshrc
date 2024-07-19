# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search kubectl docker command-not-found emoji-clock)

# ------ Alias ----------
alias ttl-dit="aws eks update-kubeconfig --name Titleloans-DIT-EKS --role-arn arn:aws:iam::334375151823:role/Titleloans-DIT-EKS-master --profile ChaiyoPowerUserRole"
alias ttl-uat="aws eks update-kubeconfig --name Titleloans-UAT-EKS --role-arn arn:aws:iam::334375151823:role/Titleloans-UAT-EKS-master --profile ChaiyoPowerUserRole" 

source $ZSH/oh-my-zsh.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ----- Bat (better cat) -----

export BAT_THEME=tokyonight_night

# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# ---- Eza (better ls) -----

alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

alias cd="z"

export EZA_COLORS="*.jenkinsfile=38;5;121:*.Jenkinsfile=38;5;121:*.json=33;1;121:*.csv=32;1;121:*.yaml=35;1;121"
