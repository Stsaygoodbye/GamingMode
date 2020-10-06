#===========================================================================//
# ╭━━━┳━━━┳━━╮╱╱╱╱╱╱╱╱╱╱╭╮
# ┃╭━╮┃╭━╮┣┫┣╯╱╱╱╭╮╱╱╱╱╭╯╰╮
# ┃╰━━┫┃╱┃┃┃┃╱╭━╮╰╋━━┳━┻╮╭╋━━┳━╮
# ╰━━╮┃┃╱┃┃┃┃╱┃╭╮┳┫┃━┫╭━┫┃┃╭╮┃╭╯
# ┃╰━╯┃╰━╯┣┫┣╮┃┃┃┃┃┃━┫╰━┫╰┫╰╯┃┃
# ╰━━━┻━━╮┣━━╯╰╯╰┫┣━━┻━━┻━┻━━┻╯
# ╱╱╱╱╱╱╱╰╯╱╱╱╱╱╭╯┃ 𝑩𝒚 𝜜𝑘𝑖𝑟𝑎𝑺𝒖𝒑𝒆𝒓 © 2020
# ╱╱╱╱╱╱╱╱╱╱╱╱╱╱╰━╯
#===========================================================================//
# GIVE PROPER CREDITS IF YOU USE THE PART OF IT IN YOUR WORK, THANKS!
#===========================================================================//
#!/system/bin/sh
MODDIR=${0%/*}

# Wait for boot to be completed
while [ `getprop sys.boot_completed` != "1" ]; do
    sleep 1
done

# Apply settings
sleep 50

# Magisk Busybox Symlink for Apps
ln -s /sbin/.magisk/busybox/*

# Removed Log
if [ -e /storage/emulated/0/gaming.log ]; then
rm /storage/emulated/0/gaming.log
fi

#Setup Script
/system/bin/gaming 2>/dev/null

exit 0