#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:37197100:e0aebeba38788abd05410bc010a2a173583b1cf5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23737640:0129c8e2444734ec3fbb862a6e98407a53b78f52 EMMC:/dev/block/bootdevice/by-name/recovery e0aebeba38788abd05410bc010a2a173583b1cf5 37197100 0129c8e2444734ec3fbb862a6e98407a53b78f52:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
