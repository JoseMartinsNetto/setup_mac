eval "$(starship init zsh)"

fastfetch

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
export PATH="$PATH:/Users/josemartins/Low_Level/nvim-macos-arm64/bin"
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

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/josemartins/.dart-cli-completion/zsh-config.zsh ]] && . /Users/josemartins/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
