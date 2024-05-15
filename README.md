# DNS Automation Script

This project aims to automate changing DNS settings on your computer. While many guides and tutorials exist online, this script offers a fully automated solution for switching between Google's public DNS and your internet provider's private DNS.

## Overview

Google's public DNS (8.8.8.8) and Cloudflare's DNS (1.1.1.1) are popular free-to-use DNS services. Each has its advantages, but they may have different levels of accessibility for certain websites. For example, you might find that some sites are blocked on Cloudflare's DNS but accessible through Google's public DNS.

To address this, I designed a script that allows you to easily switch your computer's DNS settings between Google's public DNS and your default automatic DNS settings.

## Features

- Automates DNS changes on your computer
- Allows you to switch between Google's public DNS and automatic DNS settings
- Compatible with various network adapters (Ethernet, Wi-Fi, etc.)

## Usage

1. Download the script from [this link](https://lnkd.in/eJCiZa7w).
2. Run the `app.bat` file.
3. Answer the prompts:
   - "Which adapter would you like to change? Write its full name."</br>
You'll be given a list of adapters such as Ethernet, Wi-Fi, etc. Type the exact name of the adapter you want to change.
   - "Would you like to activate or deactivate?"</br>
Type `activate` to set your internet adapter to use Google's public DNS. Type `deactivate` to revert your adapter back to automatic DNS settings.

## Notes

- The script is a bit more complex than Cloudflare's app, but it gets done.
- I still keep the Cloudflare app on my computer as a backup. It's an easy-to-use option when it works, and I use my script when it doesn't.

## Disclaimer

- Use this script at your own risk. Ensure you understand the changes it makes to your network settings.

## Built With

- Batch scripting

## Skills Demonstrated

- Automation
- Network configuration
