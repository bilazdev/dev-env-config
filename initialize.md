# Connect to wifi
    nmcli device wifi list
    nmcli device wifi rescan
    nmcli device wifi connect #SSID password #PASSWORD

# Installing yay aur
    sudo pacman -S git;
    cd /opt;
    sudo git clone https://aur.archlinux.org/yay-git.git;
    sudo chown -R #USERNAME:#USERNAME ./yay-git;
    cd yay-git;
    makepkg -si;

# Downloading Packages
    yay -S rofi kitty tmux neovim polybar greenclip;


# Modify bashrc
    echo 'source ~/.config/dotfiels/.bashrc;' >> ~/.bashrc;


