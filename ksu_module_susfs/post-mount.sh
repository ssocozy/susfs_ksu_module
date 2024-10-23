#!/system/bin/sh

MODDIR=/data/adb/modules/susfs4ksu
SUSFS_BIN=/data/adb/ksu/bin/ksu_susfs

source ${MODDIR}/utils.sh

#Mounting partitions using susfs
${SUSFS_BIN} add_sus_mount /system
${SUSFS_BIN} add_sus_mount /product
${SUSFS_BIN} add_sus_mount /vendor

# Hide the entire /data/adb directory
${SUSFS_BIN} add_sus_mount /data/adb

# Exclude specific files and directories needed for root
${SUSFS_BIN} add_sus_path /data/adb/rvhc
${SUSFS_BIN} add_sus_path /data/adb/service.d
# ${SUSFS_BIN} add_sus_path /data/adb/tricky_Store
# ${SUSFS_BIN} add_sus_path /data/adb/zygisksu
${SUSFS_BIN} add_sus_path /data/adb/ksud
