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

    yay -S rofi kitty tmux neovim polybar greenclip telegram-desktop google-chrome nvidia arandr i3-battery-popup;

# Modify bashrc

    echo 'source ~/.config/dotfiels/.bashrc;' >> ~/.bashrc;

# Modify xprofile

    sudo chmod +x ~/.config/dotfiles/.xprofile;
    echo '~/.config/dotfiles/.xprofile;' >> ~/.xprofile;

# Enable tap to click with touchpad

# copy the following to this path:

# /etc/X11/xorg.conf.d/90-touchpad.conf

```
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "NaturalScrolling" "true"
        Option "TappingButtonMap" "lrm" # 1/2/3 finger, for 3-finger middle lrm
EndSection

```

######### FAQ #############

1- if kitty can't detect the font check that the kitty font is listed in `kitty +list-fonts` comman
