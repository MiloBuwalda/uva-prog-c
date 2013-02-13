# Software

### Virtual Machine

To avoid having to install all necessary software yourself you can do the assignments in an already prepared Virtual Machine (VM). The VM for this course can be found here:
<http://mirror.cs50.net/appliance50/17/i386/appliance50-17-9-ovf.zip>

### Virtual Box
*NB: The information below is work in progress*

*NB: There are alternatives to Virtual Box that might be more user friendly,
e.g. [VMWare Player](http://www.vmware.com/products/player/)*

* Download and install Virtual Box and all it's components: <https://www.virtualbox.org/wiki/Downloads>
* Create a new VM (Linux) from an existing disk, with at least 512mb memory. There is a special VM for CS50; version 2.3 of this disk (or as they call it: appliance) can be found here: <http://mirror.cs50.net/appliance50/17/i386/appliance50-17-9-ovf.zip>. Remember to unpack this zip file.
* Now you can start the VM, but the resolution will not match the native resolution of your computer. To solve this problem, you have to install guest additions	for Linux (the OS of the VM). You can find full instructions on how to do this here, but the instructions below should be sufficient: <http://www.virtualbox.org/manual/ch04.html#idp18411760>

##### Installing guest additions in Virtual Box

* Start the newly created VM and notice that the resolution is too small
* Open a terminal: click on the menu button at the lower left corner of the screen, select accessories and then terminal. Now type in "sudo yum install  dkms" and enter the password "crimson" when asked. This step might take a while.
* Now mount the VBoxGuestAdditions.iso file in Devices->CD/DVD Devices. This file can be found in the installation directory of Virtual Box.
* In the open terminal, go to the mounted cd: "cd /media", then "cd " and press tab and enter (this will automatically change the directory to the mounted CD).
* Execute the following command: "sh ./VBoxLinuxAdditions.run"
* Restart the Virtual Machine.

Now you should be able to run the VM in full screen, just like you are running the VM natively. Please, ask any questions or notify us of any insufficiencies concerning these instructions below. (In order to leave a message, you have to log in first.)

