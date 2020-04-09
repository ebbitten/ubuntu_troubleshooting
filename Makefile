connect_internet:
	echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
list_boots:
	journalctl --list-boots
last_boot:
	journalctl -b -1 -e
check_log:
	subl /var/log/syslog
kernel_oops:
	apport-unpack /var/crash/_usr_bin_gnome-shell.1000.crash ~/troubleshooting/gnome-shell