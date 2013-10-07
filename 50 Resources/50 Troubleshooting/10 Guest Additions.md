Guest Additions are a plugin to VirtualBox that allow your mouse to freely move
between your own computer and the computer within your VirtualBox. It also
enables you to choose a different screen size for the computer within
VirtualBox.

To install them, select Install Guest Additions… from VirtualBox’s Devices menu
while the appliance is running. (This menu is outside of the appliance, not
inside of it. You may need to release your keyboard and mouse first.) An icon of
a CD may then appear on your desktop, but no need to double-click it. Instead,
open a terminal and execute the commands below.

	sudo mount /dev/sr0 /media/
	sudo /media/VBoxLinuxAdditions.run

Once the software has been installed, execute the command below:

	sudo umount /media/
  
When done, perform an update to your VirtualBox by typing:

	update50

When done, completely turn of your VirtualBox (e.g. select 'shut down' and not
'hibernate' or one of the other options).