#!/bin/bash


# Function to get current logged in user
get_current_user() {
	echo "CURRENT LOGGED IN USER"
	print_delimiter
	echo
	whoami
	echo
}


# Function to get the operating system information
get_os_info() {
	echo "PRINTING OPERATING SYSTEM INFO"
	print_delimiter
	echo
	uname -a
	echo
}

# Function to list all users on the system
get_current_users() {
	echo "LISTING CURRENT USERS"
	print_delimiter
	echo
	awk -F':' '{ print $1}' /etc/passwd
	echo
}

#Function to print the ip address information
get_ip_addresses(){
	echo "PRINTING IP ADDRESS INFORMATION"
	print_delimiter
	echo
	ifconfig | grep "inet" | grep -v "127.0.0.1"
	echo
}

#Prints delimiter between output lines
print_delimiter() {
	printf '%.0s#' {1..50}
}

#Function to print out all the installed software on the system
get_installed_software_info() {
	echo "PRINTING INSTALLED SOFTWARE"
	echo
	print_delimiter
	echo
	dpkg-query --list | awk '/^ii/ { print $2 "\\t" $3 }'
	echo
}	


get_sys_uptime(){
	echo "PRINTING SYS TIME"
	echo
	print_delimiter
	echo
	uptime
	echo
	echo "LAST REBOOT SEQUENCE"
	print_delimiter
	echo
	last reboot
	print_delimiter
	echo

}

get_disk_usage() {

	# Print overall disk usage in human-readable format
	echo "OVERALL DISK USAGE"
	print_delimiter
	echo

	df -h

	echo ""
	echo "Detailed Disk Usage for Specific Directories:"

	# List of directories to check

	directories=("/" "/home" "/var" "/usr")

	for dir in "${directories[@]}"; do
		echo ""
		echo "USAGE for $dir:"
		du -h --max-depth=1 "$dir" 2>/dev/null | sort -hr
	done
	echo
}

#Main function where all the other functions are called
main() {

	get_os_info
	get_ip_addresses
	get_current_user
	get_current_users
	get_installed_software_info
	get_sys_uptime
	get_disk_usage
}

#Running main
main