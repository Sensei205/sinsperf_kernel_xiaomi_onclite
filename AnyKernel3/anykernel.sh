# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

properties() { '
kernel.string=SinsPerf kernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=1
device.name1=onc
device.name2=onclite
supported.versions=11 - 12
supported.patchlevels=
'; }

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference 
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

write_boot;
## end install
