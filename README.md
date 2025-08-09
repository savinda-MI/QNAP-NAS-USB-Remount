# QNAP USB Device Replug Script

A Windows batch script that automates remounting external USB devices on a QNAP NAS via SSH. It lists connected USB devices with their IDs and names, lets you select which device to replug (unbind and bind), and runs commands securely with `plink.exe` and `sudo` to avoid NAS reboots.

## Features

- Connects to QNAP NAS via SSH using `plink.exe`
- Lists all USB devices with Device IDs and product names
- Allows you to select a USB device to replug (unbind and bind)
- Automates remounting without rebooting the NAS

## Requirements

- Windows machine with `plink.exe` available in the same folder or system PATH  
- SSH access to your QNAP NAS with username, password, and sudo privileges  
- External USB device connected to the NAS

## Usage

1. Run the batch script.  
2. Enter your NAS IP address, username, and password when prompted.  
3. The script will fetch and display a list of USB devices connected to the NAS.  
4. Enter the Device ID of the USB device you want to replug.  
5. The script unbinds and rebinds the device to remount it.

## Important Notes

- Use the script carefully; incorrect Device IDs or insufficient permissions can affect NAS stability.  
- Ensure your NAS user has sudo privileges for unbind/bind operations.

## Author

Savinda Missaka  
[LinkedIn](https://www.linkedin.com/in/savinda-missaka-52b49425a)  
savinda.missaka@gmail.com

