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
