# Working on the Appliance

## Getting Started

* Go ahead and open up a terminal window (whether by opening gedit via
  Menu > Programming > gedit or by opening Terminal itself via Menu >
  Programming > Terminal). 
  
  Then execute

      mkdir ~/public_html

  in order to create a directory called public_html within John Harvard's /
  your home directory. Then download this problem set's distro into that
  directory by executing

      cd ~/public_html
      git clone http://cdn.cs50.net/2011/fall/psets/7/pset7.git

  You should see Cloning into pset7... and then your prompt again. If you
  instead see fatal followed by not found: did you run, odds are you made a
  typo. Best to try again!

  Once successful, you should find that you have a brand-new pset7 directory
  inside of your home directory's `public_html` directory. You can confirm as
  much with:

      cd ~/public_html 
      ls

  Next make each of `~`, `~/public_html`, and `~/public_html/pset7`
  "world-executable" by executing

      chmod a+x ~
      chmod a+x ~/public_html
      chmod a+x ~/public_html/pset7

  Restart network:

      sudo service network restart

  But if that doesn’t work, best to restart the appliance.  so that
  the appliance's web server (and you, from your own computer) will be able to
  access your work.

  Now navigate your way to `~/public_html/pset7` (wherein lies, recall, this
  problem set's distro) by executing the command below.

      cd ~/public_html/pset7

  Then run `ls`. You should see the below.

      css/ images/ includes/ index.php login.php login2.php logout.php

  Let’s make two of those directories world-executable. In fact, let's `chmod`
  both at the same time (by enumerating them on the command line, one after the
  other) to save some keystrokes:

      chmod a+x css images

  Now let's make some files within those directories world-readable:

      chmod a+r css/* images/*

  Recall that `*` is a "wildcard character," so `css/*` means "all files within 
  the css directory" and `images/*` means "all files within the images 
  directory."

  For security's sake, don't make includes world-executable or its contents
  world-readable, as they shoudn't be accessible to the whole world (only to
  your PHP code, as you'll soon see). In fact, even more secure would be to put
  includes outside of public_html altogether, but for simplicity, let's leave
  it where it is.

  Just to be clear now, realize that you have not created a directory called
  `pset7` in your home directory for this problem set. Rather, you have created a
  directory called pset7 in `~/public_html/`. All of the work that you do for this
  problem set will reside in `~/public_html/` and `~/public_html/pset7/`.

* Alright, time for a test! 

  Open up Firefox within the appliance and visit: [^2]

      http://localhost/~jharvard/pset7/

  You should find yourself redirected to `login.php`, where an apology
  (regarding `jharvard_pset7`) awaits! Not to worry. That just means you don't
  have a database called `jharvard_pset7` yet. (If you instead see Forbidden,
  odds are you missed a step earlier; best to try all those chmod steps again.)
  Let's create the database that's missing.

  [^2]: Incidentally, you can also access C$50 Finance within the appliance at http://127.0.0.1/~jharvard/pset7/, since 127.0.0.1 is the appliance's (and most computers') "loopback" address.

  Head to:

      http://localhost/phpMyAdmin/

  to access phpMyAdmin, a Web-based tool (that happens to be written in PHP)
  with which you can manage MySQL databases.  Log in as John Harvard if
  prompted (with a username of jharvard and a password of crimson). You should
  then find yourself at phpMyAdmin’s main page. In phpMyAdmin's top-left
  corner, you should see No databases. Normally, you can create a database by
  clicking phpMyAdmin's Databases tab, but you can also execute some SQL
  commands manually. Download the following file with a whole bunch of SQL
  statements in it:

  - [`pset7_appliance.sql`](pset7_appliance.sql)

  Open this file with a text editor and highlight all sql statements (the
  entire contents), then select Edit > Copy (or hit ctrl-C), then return to
  phpMyAdmin. Click phpMyAdmin's SQL tab, and paste everything you copied into
  that page's big text box. Skim what you just pasted to get a sense of the
  commands you're about to execute, then click Go. You should then see a green
  banner, proclaiming Your SQL query has been executed successfully. In
  phpMyAdmin's top-left corner, you should now see link to a database called
  jharvard_pset7, beneath which is a link to a table called users. But more on
  those later.

      http://localhost/~jharvard/pset7/

  and reload that page. Instead of an apology, you should now see the login page
  for your own copy of C$50 Finance! As excited as you may be, don’t try to
  register or log in just yet.

* Recall that the appliance also has a private
  IP address, `192.168.56.50`, via which you can access it, both within the
  appliance itself and from your own computer (but not from some other computer
  on the Internet). Confirm as much by visiting

      http://192.168.56.50/~jharvard/pset7/

  using Firefox within the appliance. You should again find yourself redirected
  to C$50 Finance's login page.

  Now open up a browser on your own computer and visit the same URL:

      http://192.168.56.50/~jharvard/pset7/

  You should again see the same. Note that you cannot access the appliance from
  your own computer via the localhost URL, since, when using a browser on your
  own computer, localhost refers to your own computer, which probably isn't
  running a web server!

