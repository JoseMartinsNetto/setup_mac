# Folder Aliases
alias info="fastfetch"

# 4Code
alias ituran="cd /Users/josemartins/Projects/4Code/AppIturan/ituran_digital"
alias locarx="cd /Users/josemartins/Projects/4Code/LocarX/painel"

# Pede o Menu
alias pedeOMenu="cd /Users/josemartins/Projects/PedeOMenu"
alias pedeOMenuApp="cd /Users/josemartins/Projects/PedeOMenu"
alias pedeOMenuWeb="cd /Users/josemartins/Projects/PedeOMenu"

# Applysys
alias applyapp="cd /Users/josemartins/Projects/applysys/app/applypharma_get"
alias applydash="cd /Users/josemartins/Projects/applysys/dashboard"
alias applydashfront="cd /Users/josemartins/Projects/applysys/dashboard/front"
alias applydashback="cd /Users/josemartins/Projects/applysys/dashboard/backend"

# PhamaChatbot
alias pharmaChat="cd /Users/josemartins/Projects/Symbol/phama-chatbot"
alias pharmaChatApi="cd /Users/josemartins/Projects/Symbol/phama-chatbot/api-pharmachatbot"
alias pharmaChatFront="cd /Users/josemartins/Projects/Symbol/phama-chatbot/front-pharmachatbot"
alias pharmaChatApiBaileys="cd /Users/josemartins/Projects/Symbol/phama-chatbot/api-baileys"
alias pharmaChatApiBalance="cd /Users/josemartins/Projects/Symbol/phama-chatbot/api-balance"
alias pharmaChatSchedule="cd /Users/josemartins/Projects/Symbol/phama-chatbot/schedule-greenchat"
alias pharmaChatCampaigns="cd /Users/josemartins/Projects/Symbol/phama-chatbot/campaigns-greenchat"

# Pessoal
alias chatFacil="cd cd /Users/josemartins/Projects/chat_facil"
alias projects="cd /Users/josemartins/Projects"
alias dev="cd /Users/josemartins/Projects/Dev"
alias openGL="cd /Users/josemartins/Projects/Dev/OpenGL"
alias setupMac="cd /Users/josemartins/Projects/Jose/setup_mac"

# Command Aliases
alias build_runner="dart run build_runner watch --delete-conflicting-outputs"
alias update_prune="git remote update origin --prune"
alias push_all="git push --all & git push --tags"
alias nv="neovide"
alias n="nvim"

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

alias python="python3"
alias pip="pip3"

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
export PATH="$PATH:/Users/josemartins/Low_Level/nvim-macos-arm64/bin"
export PATH="$PATH:/Applications/XAMPP/xamppfiles/bin"

export JAVA_HOME="/Users/josemartins/.sdkman/candidates/java/current/bin/java"
export DEX_2_JAR="/Users/josemartins/Low_Level/dex2jar-v2.3"
export GOPATH=$HOME/go
# export PYTHON="/opt/homebrew/bin/python3"
export PATH=$PATH:$GOPATH/bin

export DENO_INSTALL="/Users/josemartins/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Shell GPT
export PATH="/Users/josemartins/Projects/Dev/Python/shell-gpt/venv/bin/:$PATH"

# Thumb maker
export PATH="/Users/josemartins/Projects/Jose/thumb_maker/bin:$PATH"

# convert video
export PATH="/Users/josemartins/Projects/Jose/convert_video/bin:$PATH"

# if [ "$TMUX" = "" ]; then tmux; fi

# Load Angular CLI autocompletion.
source <(ng completion script)
source /Users/josemartins/.funcs.zsh

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/josemartins/.dart-cli-completion/zsh-config.zsh ]] && . /Users/josemartins/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

eval "$(starship init zsh)"
PATH=$(pyenv root)/shims:$PATH
PATH=$(pyenv root)/shims:$PATH
