# rtl8152
*2 de Diciembre 2016*

For armbian / Orange Pi PC
## Prepare
```sh
sudo apt-get install build.essential git
git clone https://github.com/xk/rtl8152.git
cd rtl8152
```
## Compile
```sh
make
```
## Not working yet because... :
```
/RAID/rtl8152/r8152.c: In function ‘rtl8153_enable’:
/RAID/rtl8152/r8152.c:2438:2: error: implicit declaration of function ‘usb_disable_lpm’ [-Werror=implicit-function-declaration]
  usb_disable_lpm(tp->udev);
  ^
/RAID/rtl8152/r8152.c: In function ‘rtl8153_disable’:
/RAID/rtl8152/r8152.c:5045:2: error: implicit declaration of function ‘usb_enable_lpm’ [-Werror=implicit-function-declaration]
  usb_enable_lpm(tp->udev);
  ^
```
## Install
```
sudo make install
```
