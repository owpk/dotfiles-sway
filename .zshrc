# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

__git_files () {
   _wanted files expl 'local files' _files
}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/owpk/.oh-my-zsh"
ZSH_DISABLE_COMPFIX=true

# THEME
#ZSH_THEME="agnoster"
#ZSH_THEME="avit"
ZSH_THEME="powerlevel10k/powerlevel10k"

# AUTOSUGGEST
ZSH_AUTOSUGGEST_STRATEGY=(completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5e5e5e"

# OTHER SETTINGS
CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# BINDINGS
bindkey '^ ' autosuggest-accept

# PLUGS
plugins=(
   zsh-autosuggestions
)

# ALIASES
alias spring="cd ~/PAPKA/GUIDES/Spring/SpringGB"
alias cfg="cd ~/.config"
alias aur="cd ~/hm/AUR"
alias psqld="sudo systemctl start postgresql"
alias gmvn="mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes
-DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4"
alias pclip="xclip"
alias gclip="xclip -o"
alias awmenu="curl -s https://raw.githubusercontent.com/wstam88/rofi-fontawesome/master/icon-list.txt | rofi -dmenu -i -markup-rows -p "" -columns 6 -width 100 -location 1 -lines 20 -bw 2 -yoffset -2 | cut -d\' -f2"
alias dckd="sudo systemctl start docker"
#alias idea-ce="DRI_PRIME=1 idea"

# ENV
source $ZSH/oh-my-zsh.sh
# source /usr/share/autojump/autojump.zsh
# export GIT_TRACE=1

# must be here
alias lls="ls -la --group-directories-first -h -S"
alias ll="ls -la --group-directories-first"
alias vim="nvim"

##THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/owpk/.sdkman"
[[ -s "/home/owpk/.sdkman/bin/sdkman-init.sh"  ]] && source "/home/owpk/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
