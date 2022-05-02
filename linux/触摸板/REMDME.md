# 触摸板
由于dwm的原因，触摸板没办法使用所以我们进行一些配置
### 安装
```bash
sudo pacman -S libinput
sudo pacman -S xf86-input-synaptics
```
### 配置
```
sudo cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d
```
/etc/X11/xorg.conf.d/40-libinput.conf 
```
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "Tapping" "on"
        Option "ButtonMapping" "1 3 0 4 5 6 7"
        Option "TappingButtonMap" "lmr"
        Option "DisableWhileTyping" "on"
        Option "TappingDrag" "on"
EndSection
```
