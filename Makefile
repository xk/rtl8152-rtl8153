#
#
#

ifneq ($(KERNELRELEASE),)
	obj-m	 := r8152.o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
	PWD :=$(shell pwd)

.PHONY:modules
modules:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) modules

.PHONY: all
all: clean modules install_rules install

.PHONY:clean
clean:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) clean

.PHONY: install
install:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) INSTALL_MOD_DIR=kernel/drivers/net/usb modules_install
	depmod $(shell uname -r)

.PHONY: install_rules
install_rules:
	install --group=root --owner=root --mode=0644 50-usb-realtek-net.rules /etc/udev/rules.d/

endif

