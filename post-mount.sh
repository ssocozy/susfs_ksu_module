#!/system/bin/sh

MODDIR=/data/adb/modules/susfs4ksu
SUSFS_BIN=/data/adb/ksu/bin/ksu_susfs

source ${MODDIR}/utils.sh

#Mounting partitions using susfs
${SUSFS_BIN} add_sus_mount /system
${SUSFS_BIN} add_sus_mount /product
${SUSFS_BIN} add_sus_mount /vendor