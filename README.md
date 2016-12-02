# rtl8152 rtl8153
*2 de Diciembre 2016, jorge@jorgechamorro.com*

For armbian / Orange Pi PC / TP-Link UE300
## Prepare
```sh
sudo apt-get install build.essential git
git clone https://github.com/xk/rtl8152-rtl8153.git
cd rtl8152-rtl8153
```
## Compile
```sh
make -j4
sudo make install
```
## Load and test
```
sudo modprobe -a r8152
lsmod
Module                  Size  Used by
r8152                  49658  0 
[...]
```
## Plug it in (TP-Link UE300) and check
```
lsusb
Bus 003 Device 002: ID 2357:0601
[...]

nano /etc/network/interfaces
(you know how to do that, right?)

sudo ifup eth1
ifconfig
[...]
eth1      Link encap:Ethernet  HWaddr 60:e3:27:06:e6:6a  
          inet addr:192.168.0.13  Bcast:192.168.0.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:1615 errors:0 dropped:20 overruns:0 frame:0
          TX packets:2151 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:191415 (186.9 KiB)  TX bytes:2113881 (2.0 MiB)
[...]
```
## BTW:
```
uname -a
Linux orangepipc 3.4.112-sun8i #10 SMP PREEMPT Sun Oct 23 16:06:55 CEST 2016 armv7l GNU/Linux
```
Good luck!
