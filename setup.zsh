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

    brew tap leoafarias/fvm

    packages=(
        git
        neovim
        ffmpeg
        gleam
        go
        tmux
        pipx
        lazygit
        ripgrep
        cocoapods
        fvm
        starship
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
        obs
        wezterm
        discord
        microsoft-teams
        devcleaner
        zed
        elmedia-player
        locationsimulator
        the-unarchiver
        figma
    )

    for app in "${cask_apps[@]}"; do
        brew install --cask $app
    done
}

function setup_dotfiles() {
    reload_source
    
    echo "Setup dotfiles"

    cp dotfiles/.funcs.zsh ~/.funcs.zsh
    cp dotfiles/.gitconfig  ~/.gitconfig 
    cp dotfiles/.wezterm.lua ~/.wezterm.lua
    cp dotfiles/.zshrc ~/.zshrc
    cp dotfiles/.tmux.conf ~/.tmux.conf
    cp dotfiles/starship.toml ~/.config/starship.toml

    echo "dotfiles setup done."
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

function install_fonts() {
    echo "Installing fonts..."

    fonts=(
        font-caskaydia-cove-nerd-font
        font-jetbrains-mono-nerd-font
        font-zed-mono-nerd-font
        font-hack-nerd-font
        font-go-mono-nerd-font-Mono
        font-fira-code-nerd-font
    )

    for font in "${fonts[@]}"; do
        brew install --cask $font
    done

    rm -rf extracted


    echo "Fonts Installed."
}

function install_flutter() {
    if ! command -v flutter &> /dev/null
        then
            echo "flutter sdk is not installed. Installing flutter sdk..."

            reload_source

            git clone https://github.com/flutter/flutter.git -b stable ~/Low_Level/flutter
        else
            echo "flutter sdk is already installed."
    fi
}
    
install_brew_packages
install_brew_cask
setup_dotfiles
install_node
install_java
install_deno
install_rust
setup_neovim
install_fonts
install_flutter

echo "Setup complete!"
