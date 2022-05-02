# xinit的配置
# 安装
```bash
sudo pacman -S xorg-xinit
```
然后复制xinit文件
```bash
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
```
之后删除后面几项xorg的项目然后添加
```
#qt
export QT_QPA_PLATFORMTHEME=qt5ct
#设置半透明
picom -cGbf &
#输入法
fcitx5 -d &
#ibus-daemon --xim -d &
#设置壁纸
# /bin/bash ~/.config/scripts/wp-autochange.sh &
python -u ~/.config/scripts/changewp.py &
slstatus &

exec dwm
```

### 注意
需要安装qt5ct,picom，fcitx5,feh  
#### 壁纸
复制changewp.py到.config/scripts  
壁纸存放在～/Pictures/wallpapers
