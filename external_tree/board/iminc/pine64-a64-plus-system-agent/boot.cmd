setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait

fatload mmc 0 $kernel_addr_r Image
fatload mmc 0 $fdt_addr_r sun50i-a64-pine64-plus.dtb
fatload mmc 0 0x4F000000 overlays/spidev.dtbo

fdt addr ${fdt_addr_r}
fdt resize 8192
fdt apply 0x4F000000

bootefi $kernel_addr_r $fdt_addr_r
