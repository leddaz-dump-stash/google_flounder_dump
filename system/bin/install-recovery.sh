#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:11459072:44396c0e86e3c0ace5479d17b014a91c4d42bfbb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:8829440:1e36eb041b1d8efee22d87ae7862b4a2e60bf753 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 44396c0e86e3c0ace5479d17b014a91c4d42bfbb 11459072 1e36eb041b1d8efee22d87ae7862b4a2e60bf753:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
