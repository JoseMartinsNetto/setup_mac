# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="nicoulaj"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting git-flow-completion docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration
# source /Users/josemartins/.git-flow-completion.zsh

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
alias zshconfig="mate /Users/josemartins/.zshrc"
alias ohmyzsh="mate /Users/josemartins/.oh-my-zsh"

# Folder Aliases

# 4Code
alias ituran="/Users/josemartins/Projects/4Code/AppIturan/ituran_digital"
alias locarx="/Users/josemartins/Projects/4Code/LocarX/painel"

# Pede o Menu
alias pedeOMenu="/Users/josemartins/Projects/PedeOMenu/app/app-ios"

# Cod3rs
alias sigme="/Users/josemartins/Projects/Cod3rs/sigm3"
alias sigme_front="/Users/josemartins/Projects/Cod3rs/sigm3/front"
alias pedeaki_admin="/Applications/XAMPP/xamppfiles/htdocs"
alias pedeaki="/Users/josemartins/Projects/Cod3rs/pedeaki"
alias pedeaki_user_app="/Users/josemartins/Projects/Cod3rs/pedeaki/user_app"
alias pedeaki_delivery_man_app="/Users/josemartins/Projects/Cod3rs/pedeaki/delivery_man_app"
alias pedeaki_restaurant_app="/Users/josemartins/Projects/Cod3rs/pedeaki/restaurant_app"

#Estimula_Ai
alias estimulaAi="/Users/josemartins/Projects/estimula_ai"

# Applysys
alias applyfarma="/Users/josemartins/Projects/applysys/applypharma_get"

# PhamaChatbot
alias pharmaChat="/Users/josemartins/Projects/Symbol/phama-chatbot"
alias pharmaChatApi="/Users/josemartins/Projects/Symbol/phama-chatbot/api-pharmachatbot"
alias pharmaChatFront="/Users/josemartins/Projects/Symbol/phama-chatbot/front-pharmachatbot"
alias pharmaChatApiBaileys="/Users/josemartins/Projects/Symbol/phama-chatbot/api-baileys"
alias pharmaChatApiBalance="/Users/josemartins/Projects/Symbol/phama-chatbot/api-balance"
alias pharmaChatSchedule="/Users/josemartins/Projects/Symbol/phama-chatbot/schedule-greenchat"
alias pharmaChatCampaigns="/Users/josemartins/Projects/Symbol/phama-chatbot/campaigns-greenchat"

# Pessoal
alias te="/Users/josemartins/Projects/Jose/Rust/text_editor"
alias chatFacil="cd /Users/josemartins/Projects/chat_facil"
alias ecdLang="/Users/josemartins/Projects/Jose/C#/EcludLang"

# Langs Aliases
alias joseAndroid="/Users/josemartins/Projects/Jose/Android"
alias joseCpp="/Users/josemartins/Projects/Jose/C++"
alias joseDart="/Users/josemartins/Projects/Jose/Dart"
alias joseFlutter="/Users/josemartins/Projects/Jose/Flutter"
alias joseIos="/Users/josemartins/Projects/Jose/iOS"
alias joseJava="/Users/josemartins/Projects/Jose/Java"
alias josePython="/Users/josemartins/Projects/Jose/Python"
alias joseWeb="/Users/josemartins/Projects/Jose/Web"
alias jdGui="java -jar /Applications/JD-GUI.app/Contents/Resources/Java/jd-gui-1.6.6-min.jar"
alias joseGo="/Users/josemartins/Projects/Jose/Go"

# Command Aliases
alias build_runner="dart run build_runner watch --delete-conflicting-outputs"
alias update_prune="git remote update origin --prune"
alias push_all="git push --all & git push --tags"
alias git_clear="update_prune & clear_branchs"
alias nv="neovide"
alias n="nvim"
alias aic="aicommit2 --all && git push"
alias aic_o="aicommit2 --all && git push"
alias python="python3"
alias pip="pip3"

# Docker Aliases
alias compose_erp_up="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-erp.yaml up -d"
alias compose_erp_down="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-erp.yaml down"
alias compose_locarx_up="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-locarx.yaml up -d"
alias compose_locarx_down="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-locarx.yaml down"
alias compose_sigme_up="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-sigme.yaml up -d"
alias compose_sigme_down="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-sigme.yaml down"
alias compose_stackfood_up="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-stackfood.yaml up -d"
alias compose_stackfood_down="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-stackfood.yaml down"

alias compose_pharmaChat_up="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-pharma.yml up -d"
alias compose_pharmaChat_down="docker compose -f /Users/josemartins/Low_Level/docker-compose/docker-compose-pharma.yml down"

# PATHS
export PATH="$PATH:/Users/josemartins/Low_Level/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

export PATH="$PATH:/Users/josemartins/Low_Level/ngrok"
export ANDROID_HOME="$PATH:/Users/josemartins/Library/Android/sdk"
export PATH="$PATH:/Users/josemartins/Library/Android/sdk/emulator"
export PATH="$PATH:/Users/josemartins/Library/Android/sdk/tools"
export PATH="$PATH:/Users/josemartins/Library/Android/sdk/platform-tools"
export PATH="$PATH:/Users/josemartins/Library/Android/sdk/platform-tools"
export PATH="$PATH:/Users/josemartins/Library/Android/sdk/build-tools"
export PATH="$PATH:/Users/josemartins/Library/Android/sdk/platforms"
export PATH="$PATH:/Users/josemartins/Library/Python/3.9/bin"
export PATH="$PATH:/Users/josemartins/Projects/Jose/Dart/scripts/bin"
export PATH="$PATH:/Users/josemartins/Low_Level/dex2jar-v2.3"
export PATH="$PATH:/Users/josemartins/Low_Level/scripts"
export PATH="$PATH:/Users/josemartins/Low_Level/realesrgan"

export PATH="$PATH:/Users/josemartins/.local/bin"
export PATH="$PATH:/Users/josemartins/.nvim/bin"
export PATH="$PATH:/Applications/XAMPP/xamppfiles/bin"

export JAVA_HOME="/Users/josemartins/.sdkman/candidates/java/current/bin/java"
export DEX_2_JAR="/Users/josemartins/Low_Level/dex2jar-v2.3"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export DENO_INSTALL="/Users/josemartins/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# if [ "$TMUX" = "" ]; then tmux; fi

# Load Angular CLI autocompletion.
source <(ng completion script)
source /Users/josemartins/.funcs.zsh

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/josemartins/.dart-cli-completion/zsh-config.zsh ]] && . /Users/josemartins/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
