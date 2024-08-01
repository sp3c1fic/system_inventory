# system_inventory
This Bash script gathers various pieces of information about the system it is run on. The script provides details about the current user, operating system, installed software, IP addresses, system uptime, and disk usage.


Table of Contents

    Features
    Requirements
    Usage
    Functions
        get_current_user
        get_os_info
        get_current_users
        get_ip_addresses
        get_installed_software_info
        get_sys_uptime
        get_disk_usage
    License

Features

    Displays the currently logged-in user.
    Prints operating system information.
    Lists all users on the system.
    Displays IP address information.
    Lists all installed software on the system.
    Shows system uptime and the last reboot sequence.
    Displays overall disk usage and detailed usage for specific directories.

Requirements

    This script requires a Unix-like operating system (e.g., Linux, macOS).
    awk, uname, whoami, ifconfig, dpkg-query, uptime, last, df, and du commands must be available on the system.

Usage

    Clone the repository:

    bash

git clone https://github.com/sp3c1fic/system_inventory.git

Navigate to the script directory:

bash

cd system-info-script

Make the script executable:

bash

chmod +x system_info.sh

Run the script:

bash

    ./system_info.sh

Functions
get_current_user

Prints the currently logged-in user.
get_os_info

Prints the operating system information using uname -a.
get_current_users

Lists all users on the system by parsing the /etc/passwd file.
get_ip_addresses

Prints the IP address information by filtering the output of ifconfig.
get_installed_software_info

Lists all installed software on the system using dpkg-query --list.
get_sys_uptime

Prints the system uptime and the last reboot sequence using uptime and last reboot.
get_disk_usage

Displays overall disk usage in a human-readable format using df -h and detailed disk usage for specific directories using du -h --max-depth=1.
License

This project is licensed under the MIT License - see the LICENSE file for details.
