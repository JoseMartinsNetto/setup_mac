
function aiCommit() {
    git diff --staged | sgpt "Commit my changes with message based on this diff using coventional commits standarts, give only command, not explain anything."
}

function take() {
    mkdir -p $1
    cd $1
}

function clear_branchs() {
    git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -D

    git remote update origin --prune
}

function reload_source() {
    source ~/.zshrc
}

function clear_nvim() {
    bkp_nvim
    clear_nvim_cache

    rm -rf ~/.config/nvim
}

function new() {
    touch $1
    n $1
}

function clear_nvim_cache() {
    rm -rf ~/.local/state/nvim
    rm -rf ~/.local/share/nvim
}

function bkp_nvim() {
    mv ~/.config/nvim{,.bak}

    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}
    mv ~/.cache/nvim{,.bak}    
}

function launch_ituran() {
    flutter_watch --flavor hml
}

function connect_to_locarx() {
    ssh -i ~/Documents/LocarXHMLKeyPair.pem ec2-user@ec2-34-239-109-141.compute-1.amazonaws.com
}

function flutter_watch(){
  tmux send-keys "flutter run $1 $2 $3 $4 --pid-file=/tmp/tf1.pid" enter \;\
  split-window -h \;\
  send-keys 'npx -y nodemon -e dart -x "cat /tmp/tf1.pid | xargs kill -s usr1"' enter \;\
  resize-pane -y 5 -t 1 \;\
  select-pane -t 0 \;
}

function flutter_fvm_watch(){
  tmux send-keys "fvm flutter run $1 $2 $3 $4 --pid-file=/tmp/tf1.pid" enter \;\
  split-window -h \;\
  send-keys 'npx -y nodemon -e dart -x "cat /tmp/tf1.pid | xargs kill -s usr1"' enter \;\
  resize-pane -y 5 -t 1 \;\
  select-pane -t 0 \;
}

function launch_emulator() {
    emu=$(emulator -list-avds)

    echo "Launching $emu..."
    nohup `emulator -avd $emu &`
}

function jd_gui() {
    java -jar /Users/josemartins/Low_Level/jd-gui/jd-gui-1.6.6.jar $1
}

function dex2jar() {
    sh $DEX_2_JAR/d2j-dex2jar.sh $*
}

function runPharmaChatbotTmux() {

    open /Applications/Docker.app
    echo "Iniciando docker..."
    sleep 3

    tmux rename pharmaChatbot
    tmux send-keys "pharmaChatFront" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "npm run dev" enter \;\
    new-window \;\
    send-keys "pharmaChatApi" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "yarn dev" enter \;\
    new-window \;\
    send-keys "pharmaChatApiBalance" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "npm run dev" enter \;\
    new-window \;\
    send-keys "pharmaChatApiBaileys" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "npm run dev" enter \;\
}

function editAndRunPhamaChatbot() {
    open /Applications/Docker.app
    echo "Iniciando docker..."
    sleep 3

    tmux rename pharmaChatbot
    tmux send-keys "pharmaChatFront" enter \;\
    send-keys "nvim ." enter \;\
    split-window -v \;\
    resize-pane -y 5 -t 1 \;\
    send-keys "pharmaChatFront" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "npm run dev" enter \;\
    select-pane -t 0 \;\
    new-window \;\
    send-keys "pharmaChatApi" enter \;\
    send-keys "nvim ." enter \;\
    split-window -v \;\
    resize-pane -y 5 -t 1 \;\
    send-keys "pharmaChatApi" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "yarn dev" enter \;\
    select-pane -t 0 \;\
    new-window \;\
    send-keys "pharmaChatApiBalance" enter \;\
    send-keys "nvim ." enter \;\
    split-window -v \;\
    resize-pane -y 5 -t 1 \;\
    send-keys "pharmaChatApiBalance" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "npm run dev" enter \;\
    select-pane -t 0 \;\
    new-window \;\
    send-keys "pharmaChatApiBaileys" enter \;\
    send-keys "nvim ." enter \;\
    split-window -v \;\
    resize-pane -y 5 -t 1 \;\
    send-keys "pharmaChatApiBaileys" enter \;\
    send-keys "nvm use" enter \;\
    send-keys "npm run dev" enter \;\
    select-pane -t 0 \;\
}

