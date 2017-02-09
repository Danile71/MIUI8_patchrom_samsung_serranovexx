#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12189696 1d22a446d548481cefc41cc1d549e8390268ab36 9738240 de8a2f7dca3ed30ff57a1f817f5b0adabacfc1ca
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12189696:1d22a446d548481cefc41cc1d549e8390268ab36; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9738240:de8a2f7dca3ed30ff57a1f817f5b0adabacfc1ca EMMC:/dev/block/bootdevice/by-name/recovery 1d22a446d548481cefc41cc1d549e8390268ab36 12189696 de8a2f7dca3ed30ff57a1f817f5b0adabacfc1ca:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
