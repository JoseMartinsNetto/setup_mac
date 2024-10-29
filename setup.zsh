#!/bin/zsh

function reload_source() {
    source ~/.zshrc
}

function install_homebrew() {
    if ! command -v brew &> /dev/null
    then
        echo "Homebrew não está instalado. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

function install_brew_packages() {
    reload_source

    packages=(
        git
        neovim
        ffmpeg
        gleam
        go
        tmux
        pipx,
        lazygit
        ripgrep
    )

    for package in "${packages[@]}"; do

        if ! command -v $package &> /dev/null
            then
                echo "$package not installed. installing $package..."

                brew install $package

                echo "$package installed."
            else
                echo "$package is already installed."
        fi
        
    done
}

function install_brew_cask() {
    reload_source

    cask_apps=(
        visual-studio-code
        google-chrome
        docker
        jetbrains-toolbox
        c0re100-qbittorrent
        postman
        dbeaver-community
        whatsapp
        telegram-desktop
        franz
        obs
        wezterm
        accord
        microsoft-teams
        macs-fan-control
        devcleaner
        zed
        elmedia-player
        locationsimulator
        the-unarchiver
    )

    for app in "${cask_apps[@]}"; do
        brew install --cask $app
    done
}

function download_dotfiles() {
    reload_source
    
    echo "Setup dotfiles"

    mv dotfiles/.funcs.zsh ~/.funcs.zsh
    mv dotfiles/.gitconfig  ~/.gitconfig 
    mv dotfiles/.wezterm.lua ~/.wezterm.lua
    mv dotfiles/.zshrc ~/.zshrc
    mv dotfiles/.tmux.conf ~/.tmux.conf

    echo "dotfiles setup done."
    
}

function install_oh_my_zsh() {
    reload_source
    
    if [ -e "/Users/josemartins/.oh-my-zsh" ]; then
        echo " OhMyZsh is already installed."
    else
        echo "OhMyZsh not installed yet, installing..."

        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

        echo "OhMyZsh installed."
    fi
}

function install_node() {
    if ! command -v node &> /dev/null
        then
            echo "NodeJS is not installed. Installing NodeJS..."

            reload_source

            curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

            reload_source

            nvm install node 18.18.2
        else
            echo "NodeJs is already installed."
    fi


    if ! command -v ng &> /dev/null
        then
            echo "@anguar/cli is not installed. Installing @anguar/cli..."

            reload_source

            npm install -g @angular/cli
        else
            echo "@anguar/cli is already installed."
    fi

    
}

function install_java() {
    if ! command -v sdk &> /dev/null
        then
            echo "sdk man is not installed. Installing sdk man..."
    
            reload_source

            curl -s "https://get.sdkman.io" | bash
            
            reload_source

            sdk install java 17.0.12-amzn
        else
            echo "sdk man is already installed."
    fi
}

function install_deno() {
    if ! command -v deno &> /dev/null
        then
            echo "deno is not installed. Installing deno..."
    
            reload_source

            curl -fsSL https://deno.land/install.sh | sh
        else
            echo "deno is already installed."
    fi
}

function install_rust() {
    if ! command -v cargo &> /dev/null
        then
            echo "rust is not installed. Installing rust..."
    
            reload_source

            curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
            echo "rust installed."
        else
            echo "rust is already installed."
    fi
}

function install_yt_dlp(){
    if ! command -v yt-dlp &> /dev/null
        then
            echo "yt-dlp is not installed. Installing yt-dlp..."
    
            reload_source

            pipx install yt-dlp
            
            echo "yt-dlp installed."
        else
            echo "yt-dlp is already installed."
    fi
}

function setup_neovim() {
    if [ -e "/Users/josemartins/.config/nvim" ]; then
        echo "Neovim is already configured"
    else
        echo "Neovim not configured yet, configuring..."
        git clone https://github.com/JoseMartinsNetto/nvim.git ~/.config/nvim
        echo "Neovim configured"
    fi
}
    
install_brew_packages

install_brew_cask

download_dotfiles

install_oh_my_zsh

install_node

install_java

install_deno

install_rust

setup_neovim

echo "Setup completo!"
