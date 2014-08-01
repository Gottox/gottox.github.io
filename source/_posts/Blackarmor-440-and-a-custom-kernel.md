title: 'Blackarmor 400 and a custom kernel'
date: 2014-08-02 00:49:20
tags:
   - hardware
   - blackarmor
---
The Blackarmor 400 is a 4 Slot NAS. I plan to get openwrt boot on it. I got
serial access to the bootloader using [a serial adapter](http://www.amazon.de/gp/product/B000V3OEEO/ref=oh_aui_detailpage_o06_s00?ie=UTF8&psc=1)
and plan to load the kernel via tftp.

This is a rough info page of the current state:

* arcNumber (used by the linux kernel to identify the board)
    * [2678](http://www.arm.linux.org.uk/developer/machines/list.php?id=2678)

further readings:
* [Misc notes on the Seagate Blackarmor NAS, V1.15 ](http://www.noerenberg.de/hajo/pub/seagate-blackarmor-nas.txt)
* [Thread in the OpenWRT Forum](https://forum.openwrt.org/viewtopic.php?id=36138)
