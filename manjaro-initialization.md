[参考1](https://zhuanlan.zhihu.com/p/114062538)  
[参考2](https://blog.csdn.net/a772304419/article/details/124248176)  
[参考3](https://blog.csdn.net/m0_47329175/article/details/120555352) 

# 换源
```
sudo pacman-mirrors -c China
sudo pacman-mirrors -i -c China -m rank
```
# 同步更新系统
```
sudo pacman -Syyu
```

# yay
    sudo pacman -Sy base-devel
    sudo pacman -S yay


# Softwares
- 搜狗输入法

        sudo pacman -S fcitx-im fcitx-configtool  
        yay -S fcitx-sogoupinyin
    解决中文输入法无法切换问题：

        sudo vim ~/.xprofile


        export GTK_MODULE=fcitx
        export QT_IM_MODULE=fcitx
        export XMODIFIERS="@im=fcitx"

- 微信

        yay -Sy deepin-wine-wechat

- QQ

        yay -S deepin-wine-qq

- 网易云音乐

        yay -S netease-cloud-music

- WPS

        yay -S wps-office

- 迅雷

        yay -S xunlei-bin

- 百度网盘(electron)

        yay -S baidunetdisk


# code

- VScode

        yay -S visual-studio-code-bin
        yay -S ttf-fira-code

- lazygit

        sudo pacman -S lazygit
        yay -S lazygit

- alacritty

        sudo pacman -S alacritty

- translate-shell

        sudo pacman -S translate-shell
        yay -S translate-shell

- ranger

        sudo pacman -S ranger
        yay -S ranger

- figlet

       sudo pacman -S figlet

- vimium

        firefox
