function start_ituran() {
  if [ "$TMUX" = "" ]; then tmux; fi
  tmux send-keys "ituran" enter \;\
  new-window -c "#{pane_current_path}"
  new-window -c "#{pane_current_path}"
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

function jd-gui() {
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

