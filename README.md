# QNAP-NAS-USB-Remount
A Windows batch script that automates remounting external USB devices on a QNAP NAS via SSH. It lists connected USB devices with their IDs and names, lets you select which device to replug (unbind and bind), and runs commands securely with plink.exe and sudo to avoid NAS reboots.
