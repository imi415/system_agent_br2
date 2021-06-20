setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait

fatload mmc 0 ${kernel_addr_r} zImage
fatload mmc 0 ${fdt_addr_r} ${fdtfile}

fdt addr ${fdt_addr_r}
fdt set /soc/serial@1c28400 status okay

bootz ${kernel_addr_r} - ${fdt_addr_r}
