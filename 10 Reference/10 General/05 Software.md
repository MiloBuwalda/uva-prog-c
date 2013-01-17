# Software

### Virtual Machine

To avoid having to install all necessary software yourself you can do the assignments in an already prepared Virtual Machine (VM). The VM for this course can be found here:
<http://mirror.cs50.net/appliance/2.3/cs50-appliance-2.3-14-ovf.zip>

### Virtual Box
*NB: The information below is work in progress*

*NB: There are alternatives to Virtual Box that might be more user friendly, e.g. VMWare Player*

* Download and install Virtual Box and all it's components: <https://www.virtualbox.org/wiki/Downloads>
* Create a new VM (Linux) from an existing disk, with at least 512mb memory. There is a special VM for CS50; version 2.3 of this disk (or as they call it: appliance) can be found here: <http://mirror.cs50.net/appliance/2.3/cs50-appliance-2.3-14-ovf.zip>. Remember to unpack this zip file.
* Now you can start the VM, but the resolution will not match the native resolution of your computer. To solve this problem, you have to install guest additions	for Linux (the OS of the VM). You can find full instructions on how to do this here, but the instructions below should be sufficient: <http://www.virtualbox.org/manual/ch04.html#idp18411760>

##### Installing guest additions in Virtual Box

* Start the newly created VM and notice that the resolution is too small
* Open a terminal: click on the menu button at the lower left corner of the screen, select accessories and then terminal. Now type in "sudo yum install  dkms" and enter the password "crimson" when asked. This step might take a while.
* Now mount the VBoxGuestAdditions.iso file in Devices->CD/DVD Devices. This file can be found in the installation directory of Virtual Box.
* In the open terminal, go to the mounted cd: "cd /media", then "cd " and press tab and enter (this will automatically change the directory to the mounted CD).
* Execute the following command: "sh ./VBoxLinuxAdditions.run"
* Restart the Virtual Machine.

Now you should be able to run the VM in full screen, just like you are running the VM natively. Please, ask any questions or notify us of any insufficiencies concerning these instructions below. (In order to leave a message, you have to log in first.)

### <a id="git"></a> Git
*PLEASE IGNORE THE INSTRUCTIONS BELOW, FOR NOW*

*For more information about git -- and other version control systems, see <http://www.ericsink.com/vcbe/>.*

To deliver your problem sets, we use the version control system *git*. Please follow the following steps to deliver your problem sets. If you have any troubles using git, please ask an assistant to help you.

##### One time only

* Create an account on bitbucket: <https://bitbucket.org/>
* Create a new git repository and name it "cs50". Make sure it is private, to prevent fraud.
* Share this repository with "Marin van Beek" \<<m.vanbeek@uva.nl>\>, by going to the repository on bitbucket and then clicking "Invite your friends". Please give Marin write access to your code, this allows us to give you feedback through git.
* Install git, instructions can be found here: <http://git-scm.com/>. *Please note that the Virtual Machine and the UvA computers already have git installed.*
* Using git, clone the repository you created on bitbucket to your local machine. You will need your bitbucket account password for this. In a terminal, you should be able to use the example command given by bitbucket that has the following form:

		git clone <repository link>
You will need your bitbucket password for this step.

* Just to be sure, set your name and email address:

		git config user.name "Voornaam Achternaam"
		git config user.email "username@host.tld"

##### For each problem set
		
* Create a new folder named pset*x* where the x stands for the number of the problem set.
* Store your solution to your problem set in this folder.

##### For each major change

* In a terminal, add all new source files to the repository using:

		git add filename
* In a terminal, commit all changes to the repository using, don't forget to provide a short message that describes the changes so that you can find it back later:

		git commit -a -m "Description of changes"
Git will prompt you for a message, use this message to describe what changed since the last commit.
*ALLWAYS* check if you correctly committed all your files, using the following command:

		git status
There should be no files under "Changed but not updated" and none of our source files should be under "Untracked files".

* In a terminal, push (or send) your changes to bitbucket using:

		git push origin master
You will need your bitbucket password for this step.

Now we can access your assignments and you have a backup of them!
