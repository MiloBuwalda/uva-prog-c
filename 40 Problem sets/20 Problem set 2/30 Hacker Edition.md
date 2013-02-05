# Specification and source files

* [Specification](http://cdn.cs50.net/2011/fall/psets/2/hacker2.pdf)
* [passwd](http://cdn.cs50.net/2011/fall/psets/2/hacker2/passwd)

# Problem Set 2: Crypto - *Hacker edition*

## Goals.

* Better acquaint you with functions and libraries.

* Allow you to dabble in cryptanalysis.

* Introduce you a bit early, perhaps, to file I/O.

## Recommended Reading.

* Sections 11 – 14 and 39 of http://www.howstuffworks.com/c.htm.

* Chapters 7, 8, and 10 of Programming in C.

## Difference with normal edition

* Hacker Edition challenges you to crack actual passwords.


## Sanity Check.

* You should already have the CS50 Appliance installed, per Problem Set 1. But
be sure that you have version 17.

## Tips.

* Realize that the CS50 Appliance is a computer, albeit a virtual one. For
  better or for worse (mostly worse), computers don’t like to be forcibly shut
  down or otherwise interrupted while in the middle of something. Do take care,
  then, not to quit VirtualBox, shutdown your own computer, or even close your
  laptop’s lid while the appliance is in the middle of something (e.g.,
  downloading or installing updates, submitting your work, etc.) Best to wait
  until the appliance isn’t doing anything important, then shut it down (as via
  the green icon in the appliance’s bottom-right corner). Bad things can
  happen, too, if your own computer runs out of disk space, so beware
  downloading big files on your own computer if you know you’re low on disk
  space while the appliance is running.

* When running, the CS50 Appliance “borrows” some of your computer’s own RAM
  and CPU cycles, which can slow down programs on your computer and vice versa.
  For maximum performance, try to launch VirtualBox and the appliance before
  launching other programs on your computer, and try to minimize the number of
  programs running on your computer while the appliance is running.

  With that said, if you have lots of RAM (e.g., 4GB) and lots of CPU cycles
  (e.g., 2.0GHz), you might not need to give any of this a second thought!

* Just to be safe, do get into the habit of backing up your `.c` files from time
  to time!


## Getting Started.

* Alright, here we go!

  Launch VirtualBox or VMware Player (as by double-clicking its icon wherever
  it’s installed), and then boot the appliance (as by single-clicking it in
  VirtualBox’s lefthand menu, and then clicking Start).

* Alright, here we go for real! Open a terminal window if not open already
  (whether by opening gedit via Menu > Programming > gedit or by opening
  Terminal itself via Menu > Programming > Terminal). Then execute

      mkdir ~/hacker2

  at your prompt in order to make a directory called hacker2 in your home
  directory.1 Take care not to overlook the space between mkdir and ~/hacker2 or
  any other character for that matter! Recall that ~ denotes your home
  directory, and thus ~/hacker2 denotes a directory called hacker2 therein.

  Now execute

      cd ~/hacker2

  to move yourself into (i.e., open) that directory. Your prompt should now
  resemble the below. jharvard@appliance (~/hacker2):

  If not, retrace your steps and see if you can determine where you went wrong.
  You can actually execute

      history

  at the prompt to see your last several commands in chronological order if
  you’d like to do some sleuthing. You can also scroll through the same one
  line at a time by hitting your keyboard’s up and down arrows; hit Enter to
  re-execute any command that you’d like. If still unsure how to fix, remember
  you can always ask an assistant!

  All of the work that you do for this problem set must ultimately reside in
  your hacker2 directory for submission.

## Passwords et cetera.

* On most, if not all, systems running Linux or UNIX is a file called
  `/etc/passwd`. By design, this file is meant to contain usernames and
  passwords, along with other account-related details (e.g., paths to users’
  home directories and shells). Also by (poor) design, this file is typically
  world-readable. Thankfully, the passwords therein aren’t stored “in the
  clear” but are instead encrypted using a “one-way hash function.” When a user
  logs into these systems by typing a username and password, the latter is
  encrypted with the very same hash function, and the result is compared
  against the username’s entry in `/etc/passwd`. If the two ciphertexts match,
  the user is allowed in. If you’ve ever forgotten some password, you may have
  been told that “I can’t look up your password, but I can change it for you.”
  It could be that person doesn’t know how. But, odds are they just can’t if a
  one-way hash function’s involved.

  Even though passwords in `/etc/passwd` are encrypted, the crypto involved is
  not terribly strong. Quite often are adversaries, upon obtaining files like
  this one, able to guess (and check) users’ passwords or crack them using
  brute force (i.e., trying all possible passwords). Only in recent years have
  (most) system administrators stopped storing passwords in `/etc/passwd`,
  instead using `/etc/shadow`, which is (supposed to be) readable only by
  root. [^3] Below, though, are some username:ciphertext pairs from some
  outdated (fake) systems. [^4]

      caesar:50zPJlUFIYY0o 
      chartier:50lMLvy/mlPIE 
      guest:50q.zrL5e0Sak
      jharvard:50yoN9fp966dU 
      malan:50ym7PAOqs3Ko 
      rbowden:50WZ/Wy2GdA1Y
      skroob:50Bpa7n/23iug 
      vigenere:505YXx3Mz50bg

  Crack these passwords, each of which has been encrypted with C’s DES-based
  (not MD5-based) crypt function. Specifically, write, in `crack.c`, a program
  that accepts a single command-line argument: an encrypted password. [^5] If your
  program is executed without any command-line arguments or with more than one
  command-line argument, your program should complain and exit immediately,
  with main returning any non-zero `int` (thereby signifying an error that our
  own tests can detect). Otherwise, your program must proceed to crack the
  given password, ideally as quickly as possible, ultimately printing to
  standard output the password in the clear followed by `\n`, nothing more,
  nothing less, with `main` returning 0. The underlying design of this program is
  entirely up to you, but you must explain each and every one of your design
  decisions, including any implications for performance and accuracy, with
  profuse comments throughout your source code. Your program must be designed
  in such a way that it could crack all of the passwords above, even if said
  cracking might take quite a while. That is to say, it’s okay if your code
  might take several minutes or days or longer to run. What we demand of you is
  correctness, not necessarily optimal performance. Your program should
  certainly work on inputs other than these as well; hard-coding into your
  program the solutions to the above is not acceptable.

[^3]: Take a look at `/etc/passwd` in the appliance, for instance; wherever you see `x` a password once was.
[^4]: http://cdn.cs50.net/2011/fall/psets/2/hacker2/passwd
[^5]: In case you test your code with other ciphertexts, know that command-line arguments with certain characters (e.g., ?) must be enclosed in single or double quotes; those quotation marks will not end up in argv itself.

  So that we can automate some tests of your code, your program must behave per
  the below.

      jharvard@appliance (~/hacker2): ./crack 50q.zrL5e0Sak
      password

  Assume that users’ passwords, as plaintext, are no longer than eight
  characters long. As for their ciphertexts, you’d best pull up the man page
  for crypt by executing

      man crypt

  in a terminal window so that you know how the function works. In particular,
  make sure you understand its use of a “salt.” (According to the man page, a
  salt “is used to perturb the algorithm in one of 4096 different ways,” but why
  might that be useful?) As implied by that man page, you’ll likely want to put

      #define _XOPEN_SOURCE
      #include <unistd.h>

  at the top of your file and link your program with -lcrypt. (If you use make
  to compile your code, that switch will be included automatically.)

  You might also want to read up on C’s support for file I/O, as there’s quite a
  number of English words in `/usr/share/dict/words` in the appliance that might
  (or might not) save your program some time.

  By design, `/etc/passwd` entrusts the security of passwords to an assumption:
  that adversaries lack the computational resources with which to crack those
  passwords. Once upon a time, that may have been true. Perhaps some still do.
  But when it comes to security, assumptions are dangerous. May that this
  problem set make that claim all the more real.

  We should note that this problem set is no invitation to seek out other
  passwords to crack. [^6] Do not conflate these Hacker Editions with “black
  hat” editions. We hope, though, that by understanding better the design of
  today’s systems, you might one day build better systems yourself. Besides
  acquainting you further with C, this problem set urges you to start
  questioning designs, as vulnerabilities (if not regrets) often result from
  poor ones.

  Don’t forget to back up your files!

[^6]: In fact, do bear in mind the policies at <http://www.fas-it.fas.harvard.edu/services/student/policies/rules_and_responsibilities>.

This was Problem Set 2.

