**Note: This is part of the 'Minor Programmeren' of semester 2, which starts at
Februari 3rd, 2014.**

# This is problem set 1

Problem set 1 is called **C**.
The deadline for this problem set is Friday **Februari 7th, 2014** (16:00).

# Commands

*(Skip to the __Getting Started__ section on your first read-through!)*

Example implementations:

	~cs50/pset1/hello
	~cs50/pset1/mario
	~cs50/pset1/greedy

`check50` commands:

	check50 2013.pset1.hello hello.c
	check50 2013.pset1.mario mario.c
	check50 2013.pset1.greedy greedy.c

# Getting started

This text assumes you have the appliance up and running. If not, head back to
the "Setting up" page for instructions on how to do so.

To ensure your appliance remains up to date, be sure to update your appliance
every now and then. To do so, open up your **Terminal** and type

	update50

which will then proceed to download any updates and install them.

Know that, whenever your appliance has internet issues, you can type

	connect50

to have the appliance automatically fix these issues for you! You might need to
restart the appliance after you've ran `connect50` for the changes to take
effect.

Now, let's start on the problem set. First, create a new directory for your
problem set's files to live in. Open up your **Terminal** and type

	cd Desktop

which will move you from your current position to your Desktop. Once there,
you should see that your prompt has changed from
  
	jharvard@appliance (~):

to

	jharvard@appliance (~/Desktop):

Next, create a new directory named **pset1** by executing

	mkdir pset1

Now, you can move yourself to this newly created directory by executing

	cd pset1

which should change your prompt to

	jharvard@appliance (~/Desktop/pset1):

Using the `touch` command, you can create a new file, not unlike how you've
just created a new directory. To create a file called **hello.c**, type

	touch hello.c

To change the contents of this new and empty file, type

	gedit hello.c

to open the file in an editor that might be reminiscent of Window's Notepad.
This will be the program you'll be using to write your code during the course.
For now, just close the file again without writing anything to it.

Up until now, we have just used only the **Terminal** to navigate through the
appliance. You can also navigate through the appliance in the way you're
probably used to when using Windows or MAC OS (as per using your mouse to
navigate through a Guided User Interface), but it's best to get comfortable
with using the terminal as soon as possible. You'll definitely need it for
certain other tasks soon enough!

(Watch this video)[http://www.youtube.com/watch?v=HkQD6aw7oDc]