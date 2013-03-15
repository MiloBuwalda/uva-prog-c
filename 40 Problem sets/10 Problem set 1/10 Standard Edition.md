# Problem Set 1: C

## Goals.

* Get comfortable with Linux.

* Start thinking more carefully.

* Solve some problems in C.

## Recommended Reading.

* Sections 1 – 7, 9, and 10 of
  [http://www.howstuffworks.com/c.htm](http://www.howstuffworks.com/c.htm).

* Chapters 1 – 5, 9, and 11 – 17 of "Absolute Beginner’s Guide to C".

* Chapters 1 – 6 of "Programming in C" (we have a few copies of this one
  available for the Minor!).

## Grades.

Your work on this problem set will be evaluated along four axes primarily.

* *Scope*. To what extent does your code implement the features required by our
specification? 
* *Correctness*. To what extent is your code consistent with our
specifications and free of bugs?
* *Design*. To what extent is your code written well (i.e., clearly, efficiently,
elegantly, and/or logically)? 
* *Style*. To what extent is your code readable
(i.e., commented and indented with variables aptly named)?

## Getting Started.

* Recall that the CS50 Appliance is a “virtual machine” (running an operating
  system called Fedora, which itself is a flavor of Linux) that you can run
  inside of a window on your own computer, whether you run Windows, Mac OS, or
  even Linux itself. To do so, all you need is a “hypervisor” (otherwise known
  as a “virtual machine monitor”), software that tricks the appliance into
  thinking that it’s running on “bare metal.” One such hypervisor is called
  VirtualBox, made by Oracle (formerly Sun Microsystems), which just so happens
  to be free!

  Alternatively, you could buy a new computer, install Fedora on it (i.e., bare
  metal), and use that! But VirtualBox lets you do all that for free with
  whatever computer you already have. Plus, the CS50 Appliance is pre-configured
  for CS50, so, as soon as you install it, you can hit the ground running.

  So let’s get both VirtualBox (for Mac users) or VMware Player (Windows and
  Linux users) and the CS50 Appliance installed. Head to
  
  > <https://manual.cs50.net/CS50_Appliance_2.3>
  
  where instructions await.

* Once you have the CS50 Appliance installed, go ahead and start it (as by
  launching VirtualBox, clicking the appliance in VirtualBox’s lefthand menu,
  then clicking **Start**). A small window should open, inside of which the
  appliance should boot. A few seconds or minutes later, you should find
  yourself logged in as John Harvard (whose username is **jharvard** and whose
  password is **crimson**), with John Harvard’s desktop before you.

  *If you find that the appliance runs unbearably slow on your computer,
  particularly if several years old or a somewhat slow netbook, contact us and
  we’ll offer some tips on boosting its speed.*

  In VirtualBox the appliance’s resolution is only 800 × 600 (i.e., 800 pixels
  wide by 600 pixels tall), in case you have a small screen. But you can
  increase it to 1024 × 768 via *Menu > Preferences > Display* if you’d like.
  [^1]

  Feel free to poke around, particularly the CS50 Menu in the appliance’s
  bottom-left corner. You should find the graphical user interface (GUI), called
  Xfce, reminiscent of both Mac OS and Windows. Linux actually comes with a
  bunch of GUIs; Xfce is just one. If you’re already familiar with Linux, you’re
  welcome to install other software via *Menu > Administration > Add/Remove
  Software*, but the appliance should have everything you need for now. You’re
  also welcome to play with the appliance’s various features, per the
  instructions at

  > <https://manual.cs50.net/Appliance#How_to_Use_Appliance>

  but this problem set will explicitly mention anything that you need know or
  do.
  
  Notice, though, that the appliance will “capture” your trackpad or mouse,
  whereby once you’ve clicked inside of the appliance, you can no longer move
  your cursor (i.e., arrow) outside of the appliance’s window! Not to worry. To
  release your cursor from the appliance’s clutches, simply hit VirtualBox’s
  “host key” on your keyboard: on Mac OS, hit left-⌘; on Windows or Linux, hit
  right-Ctrl. Once you do, you should have full control of your trackpad or
  mouse again.

  [^1]: To further increase the resolution in VirtualBox you have to install
  the guest additions, see </reference/general> > *Software* > *Installing guest
  additions in Virtual Box*.

* Even if you just downloaded the appliance, ensure that it’s completely
  up-to-date by selecting *Menu > Administration > Software Update*. If updates
  are indeed available, click *Install Updates*. If prompted with *Additional
  confirmation required*, click *Continue*. If warned that the *software is not from
  a trusted source* and prompted for a password, input *crimson*, then click
  *Authenticate*. If prompted a few seconds or minutes later to *log out and back
  in*, click *Log Out* and then log back in as John Harvard, when prompted, with
  username *jharvard* and password *crimson*.

* Okay, let’s create a folder (otherwise known as a “directory”) in which your
  code for this problem set will soon live. Go ahead and double-click *Home* on
  John Harvard’s desktop (in the appliance’s top-left corner). A window entitled
  *jharvard - File Manager* should appear, indicating that you’re inside of John
  Harvard’s “home directory” (i.e., personal folder). Be sure that *jharvard* is
  indeed highlighted in the window’s top-left corner, then select *File > Create
  Folder...* and input *pset1* (in all lowercase, with no spaces) when prompted for
  a new name. Then click *Create*. A new folder called *pset1* should appear in the
  window. Go ahead and double-click it. The window’s title should change to
  *pset1 - File Manager*, and you should see an otherwise empty folder (since you
  just created it). Notice, though, that atop the window are two buttons,
  *jharvard* and *pset1*, that indicate where you were and where you are,
  respectively; you can click buttons like those to navigate back and forth
  easily.

* Okay, go ahead and close any open windows, then select *Menu > Programming >
  gedit*. (Recall that the CS50 Menu is in the appliance’s bottom-left corner.) A
  window entitled *Unsaved Document 1 - gedit* should appear, inside of which is a
  tab entitled *Unsaved Document 1*. Clearly the document is just begging to be
  saved. Go ahead and type `hello` (or the ever-popular `asdf`) in the tab, and then
  notice how the tab’s name is now prefixed with an asterisk (*), indicating
  that you’ve made changes since the file was first opened. Select *File > Save*,
  and a window entitled *Save As* should appear. Input `hello.txt` next to *Name*,
  then click *jharvard* under *Places*. You should then see the contents of John
  Harvard’s home directory, namely *Desktop* and *pset1*. Double-click *pset1*, and
  you should find yourself inside that empty folder you created. Now, at the
  bottom of this same window, you should see that the file’s default *Character
  Encoding* is *Unicode (UTF-8)* and that the file’s default *Line Ending* is
  *Unix/Linux*. No need to change either; just notice they’re there. That the
  file’s Line Ending is Unix/Linux just means that gedit will insert (invisibly)
  `\n` at the end of any line of text that you type. Windows, by contrast, uses
  `\r\n`, and Mac OS uses `\r`, but more on those details some other time.
  
  Okay, click *Save* in the window’s bottom-right corner. The window should close,
  and you should see that the original window’s title is now *`hello.txt (~/pset1)
  - gedit`*. The parenthetical just means that `hello.txt` is inside of *pset1*, which
  itself is inside of *~*, which is shorthand notation for John Harvard’s home
  directory. A useful reminder is all. The tab, meanwhile, should now be
  entitled `hello.txt` (with no asterisk, unless you accidentally hit the
  keyboard again).

* Okay, with `hello.txt` still open in gedit, notice that beneath your document
  is a “terminal window,” a command-line (i.e., text-based) interface via which
  you can navigate the appliance’s hard drive and run programs (by typing their
  name). Notice that the window’s “prompt” is
  
      jharvard@appliance (~):
  
  which means that you are logged into the appliance as John Harvard and that
  you are currently inside of ~ (i.e., John Harvard’s home directory). If that’s
  the case, there should be a pset1 directory somewhere inside. Let’s confirm as
  much.

* Click somewhere inside of that terminal window, and the prompt should start to
  blink. Type
  
      ls
  
  and then Enter. That’s a lowercase L and a lowercase S, which is shorthand
  notation for “list.” Indeed, you should then see a (short!) list of the
  folders inside of John Harvard’s home directory, namely Desktop and pset1!
  Let’s open the latter. Type
  
      cd pset1
      
  or even
      
      cd ~/pset1
  
  followed by Enter to change your directory to `pset1` (ergo, `cd`). You should
  find that your prompt changes to
  
      jharvard@appliance (~/pset1):
  
  confirming that you are indeed now inside of `~/pset1` (i.e., a directory
  called pset1 inside of John Harvard’s home directory). Now type
  
      ls
  
  followed by Enter. You should see `hello.txt`! Now, you can’t click or
  double-click on that file’s name there; it’s just text. But that listing does
  confirm that `hello.txt` is where we hoped it would be.
  
* Let’s poke around a bit more. Go ahead and type
  
      cd
  
  and then Enter. If you don’t provide cd with a “command-line argument” (i.e.,
  a directory’s name), it whisks you back to your home directory by default.
  Indeed, your prompt should now be:
  
      jharvard@appliance (~):
  
  Phew, home sweet home. Make sense? If not, no worries; it soon will! It’s in
  this terminal window that you’ll soon be compiling your first program! For
  now, though, close gedit (via *File > Quit*) and, with it, hello.txt.
  
  Incidentally, if you encounter an issue whereby clicking icons on John
  Harvard’s desktop (or in John Harvard’s home directory or in pset1) fails to
  trigger gedit to open, even if those files end in .c or .txt. (Instead, you
  may only see a spinning cursor.) If so, not to worry. Simply launch gedit via
  *Menu > Programming > gedit*, and then open the file in question manually via
  *File > Open*.
  

## O hai, world!

* Shall we have you write your first program?

 Okay, go ahead and launch gedit. (Remember how?) You should find yourself
 faced with another Unsaved Document 1. Go ahead and save the file as hello.c
 (not hello.txt) inside of pset1, just as before. (Remember how?) Once the file
 is saved, the window’s title should change to hello.c (~/pset1) - gedit, and
 the tab’s title should change to hello.c. (If either does not, best to close
 gedit and start fresh! Or ask for help!)
 
 Go ahead and write your first program by typing these lines into the file
 (though you’re welcome to change the words between quotes to whatever you’d
 like): [^2]
     
     #include <stdio.h>
     
     int main(void)
     {
         printf("hello, world!\n");
     }
     
 Notice how gedit adds “syntax highlighting” (i.e., color) as you type. Those
 colors aren’t actually saved inside of the file itself; they’re just added by
 gedit to make certain syntax stand out. Had you not saved the file as hello.c
 from the start, gedit wouldn’t know (per the filename’s extension) that you’re
 writing C code, in which case those colors would be absent. Notice, too, that
 gedit sometimes tries to help you along by completing your thought: you should
 find that, when you type that first curly parenthesis (and curly brace), the
 second appears for you automatically. [^3]
 
 Do be sure that you type in this program just right, else you’re about to
 experience your first bug! In particular, capitalization matters, so don’t
 accidentally capitalize words (unless they’re between those two quotes). And
 don’t overlook that one semicolon. C is quite nitpicky!
 
 When done typing, select File > Save (or hit ctrl-s), but don’t quit. Recall
 that the leading asterisk in the tab’s name should then disappear. Click
 anywhere in the terminal window beneath your code, and its prompt should start
 blinking. But odds are the prompt itself is just
 
     jharvard@appliance (~):
 
 which means that, so far as the terminal window’s concerned, you’re still
 inside of John Harvard’s home directory, even though you saved the program you
 just wrote inside of `~/pset1` (per the top of gedit’s window). No problem, go
 ahead and type
     
     cd pset1
     
 or
     
     cd ~/pset1
     
 at the prompt, and the prompt should change to
 
     jharvard@appliance (~/pset1):
 
 in which case you’re where you should be! Let’s confirm that hello.c is there.
 Type 

    ls 

 at the prompt followed by Enter, and you should see both `hello.c` and
 `hello.txt`? If not, no worries; you probably just missed a small step. Best to
 restart these past several steps or ask for help!
 
 [^2]: Do type in this program keystroke by keystroke inside of the appliance;
 don’t try to copy/paste from the PDF! Odds are copy/paste won’t work yet
 anyway until you install “Guest Additions,” but more on those some other time!]
 
 [^3]: If you find that annoying, you can disable the feature by unchecking Edit >
 Preferences > Plugins > Bracket Completion.

* Assuming you indeed see hello.c, let’s try to compile! Cross your fingers and
  then type 
  
      make hello
  
  at the prompt, followed by Enter. (Well, maybe don’t cross your fingers whilst
  typing.) To be clear, type only `hello` here, not `hello.c`. If all that you
  see is another, identical prompt, that means it worked! Your source code has
  been translated to 0s and 1s that you can now execute. Type
  
      ./hello
  
  at your prompt, followed by Enter, and you should see whatever message you
  wrote between quotes in your code! Indeed, if you type
  
      ls
  
  followed by Enter, you should see a new file, `hello`, alongside `hello.c` and
  `hello.txt`.
  
  If, though, upon running make, you instead see some error(s), it’s time to
  debug! (If the terminal window’s too small to see everything, click and drag
  its top border upward to increase its height.)
  
  If you see an error like expected declaration or something no less mysterious,
  odds are you made a syntax error (i.e., typo) by omitting some character or
  adding something in the wrong place. Scour your code for any differences
  vis-à-vis the template above. It’s easy to miss the slightest of things when
  learning to program, so do compare your code against ours character by
  character; odds are the mistake(s) will jump out! Anytime you make changes to
  your own code, just remember to re-save via File > Save (or ctrl-s), then
  re-click inside of the terminal window, and then re-type
  
      make hello
  
  at your prompt, followed by Enter. (Just be sure that you are inside of
  ~/pset1 within your terminal window, as your prompt will confirm or deny.) If
  you see no more errors, try running your program by typing
  
      ./hello
  
  at your prompt, followed by Enter! Hopefully you now see the greeting you
  wrote? If not, ask an assistant for help!
  
  Incidentally, if you find gedit’s built-in terminal window too small for your
  tastes, know that you can open one in its own window via Menu > Programming >
  Terminal. You can then alternate between gedit and Terminal as needed, as by
  clicking either’s name along the appliance’s bottom.
  
  Woo hoo! You’ve begun to program! Let’s take a short break.


## Story Time.

* We explored in Week 1 how hard drives work, but computers actually have a
 few types of memory (i.e., storage), among them level-1 cache, level-2 cache,
 RAM, and ROM. Curl up with the article below to learn a bit about each:
 
 > [http://computer.howstuffworks.com/computer-memory.htm](http://computer.howstuffworks.com/computer-memory.htm)
 
 Odds are you’ll want to peruse, at least, pages 1 through 5 of that article.
 
 That’s it for now. Bet this topic comes up again, though!
 
 * Recall that “style” generally refers to source code’s aesthetics, the extent
 to which code is readable (i.e., commented and indented with variables aptly
 named). Odds are you didn’t have to give too much thought to style when
 writing hello.c, given its brevity, but you’re about to start writing programs
 where you’ll need to make some stylistic decisions.
 
 Before you do, read over the [Style Guide](/reference/general).
 
 Inasmuch as style is, to some extent, a matter of personal preference, CS50
 doesn’t mandate that you mimic the styles that you see in lecture and section.
 But we do expect that you model your own style after common conventions.
 You’ll find that CS50’s Style Guide introduces you to some of those common
 conventions. Do keep them in mind as you start churning out code!
 

## Take the Pennies.

* Recall from Week 0 that, if given the choice between $10,000,000 or a
  month’s worth of pennies, whereby you receive a penny the first day, two
  pennies the second, four pennies the third, and so forth... take the pennies.
  (By contrast, if you receive an email from some stranger on the Internet
  offering you an opportunity to double your money, maybe think twice.)
  
  Anyhow, why the pennies? Exponentiation. Those pennies add up! Consider how
  many pennies you’d receive on the 31st day alone, not to mention on the days
  leading up to it:
  
  1 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2
  × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 × 2 = 1073741824
  
  Put more succinctly, that’s 1 × $$2^30$$. Convert those pennies to dollars
  (by dividing by 100) and you get, what, over $10,000,000? Crazy.

* What if you were given more than one penny on that first day? Or the month
  were February, in which case you’d get shortchanged a few million? (Best to
  take the pennies in January, March, May, July, August, October, or December.
  [^4]) Let’s find out.
  
  Implement, in a file called `pennies.c`, a program that first asks the user how
  many days there are in the month and then asks the user how many pennies he or
  she will receive on the first day of that month. The program should then
  calculate the amount that the user will have received in total by the end of
  the month (not just on the last day) if that amount is doubled on every day
  but the first, expressed not as pennies but as dollars and cents. If the user
  does not type in 28, 29, 30, or 31 for the number of days in the month, the
  program should prompt the user to retry. If the user does not input a positive
  integer for the first day’s number of pennies, the program should prompt the
  user to retry.
  
  For instance, your program might behave as follows, whereby boldfaced text
  represents some user’s input.
  
      jharvard@appliance (~/pset1): ./pennies Days in month: 32
      Days in month: 31
      Pennies on first day: 1
      $21474836.47

  [^4]: I’ll admit it. I had to look at a calendar.
  
* Notice how this output suggests that the program should indeed re-prompt the
  user if he or she fails to cooperate with these rules (as by inputting too
  many days).
  
  How to begin? Well, as before, start by opening gedit and saving an otherwise
  blank file as `pennies.c`. Then, fill the file with some “boilerplate” code like
  the below:
  
      #include <cs50.h> #include <stdio.h>
      
      int main(void) 
      {
      }
  
  Save the file and, just to be safe, try compiling it with
  
      make pennies
  
  in your terminal window, just to make sure you didn’t make any syntactical
  mistakes, in which case you’ll see errors that will need to be fixed! Then
  dive back into your code.
  
  Odds are you’ll want a couple of loops, one with which to prompt (and
  potentially re-prompt) the user for a number of days, and another with which
  to prompt (and potentially re-prompt) the user for a number of first-day
  pennies. How to get both those numbers? Perhaps the CS50 Library offers some
  options?
  
  Of course, if you store the user’s amount due in an int (which is only 32
  bits in the CS50 Appliance), the total will be bounded by $$2^31$$ – 1
  pennies.  (Why $$2^31$$ and not $$2^32$$? And why 1 less than $$2^31$$?)
  Best, then, to store your total in a long long, so that the user benefits
  from 64 bits. (Don’t worry if users’ totals overflow 64 bits and even go
  negative; consider it punishment for greed!)
  
  Do take care to format the user’s total as dollars and cents (to just 2
  decimal places), prefixed with a dollar sign, just as we did in the output
  above. You do not need to insert commas after every 3 digits to the left of
  the decimal, as you might normally do. So that we can automate some tests of
  your code, we ask that your program’s last line of output be the amount owed
  to a user, followed by \n. The rest of your program’s personality we leave
  entirely to you!
  
  If you’d like to play with the staff’s own implementation of pennies in the
  appliance, you may execute the below at the terminal window.
  
      ~cs50/pset1/pennies


## Time for Change.

* Speaking of money, “counting out change is a blast (even though it boosts
  mathematical skills) with this spring-loaded changer that you wear on your
  belt to dispense quarters, dimes, nickels, and pennies into your hand.” Or so
  says the website on which we found this here fashion accessory. [^5]

  ![cents_disposer](cents_disposer.png)
  
  Of course, the novelty of this thing quickly wears off, especially when
  someone pays for a newspaper with big bill. Fortunately, computer science has
  given cashiers everywhere ways to minimize numbers of coins due: greedy
  algorithms.

  According to the National Institute of Standards and Technology (NIST), a
  greedy algorithm is one “that always takes the best immediate, or local,
  solution while finding an answer. Greedy algorithms find the overall, or
  globally, optimal solution for some optimization problems, but may find
  less-than-optimal solutions for some instances of other problems.” [^6]
  
  What’s all that mean? Well, suppose that a cashier owes a customer some change
  and on that cashier’s belt are levers that dispense quarters, dimes, nickels,
  and pennies. Solving this “problem” requires one or more presses of one or
  more levers. Think of a “greedy” cashier as one who wants to take, with each
  press, the biggest bite out of this problem as possible. For instance, if some
  customer is owed 41¢, the biggest first (i.e., best immediate, or local) bite
  that can be taken is 25¢. (That bite is “best” inasmuch as it gets us closer
  to 0¢ faster than any other coin would.) Note that a bite of this size would
  whittle what was a 41¢ problem down to a 16¢ problem, since 41 – 25 = 16. That
  is, the remainder is a similar but smaller problem. Needless to say, another
  25¢ bite would be too big (assuming the cashier prefers not to lose money),
  and so our greedy cashier would move on to a bite of size 10¢, leaving him or
  her with a 6¢ problem. At
  
  that point, greed calls for one 5¢ bite followed by one 1¢ bite, at which
  point the problem is solved. The customer receives one quarter, one dime, one
  nickel, and one penny: four coins in total.
  
  [^5]: Description from hearthsong.com. For ages 5 and up. 
  [^6]: http://www.nist.gov/dads/HTML/greedyalgo.html

* It turns out that this greedy approach (i.e., algorithm) is not only locally
  optimal but also globally so for America’s currency (and also the European
  Union’s). That is, so long as a cashier has enough of each coin, this
  largest-to-smallest approach will yield the fewest coins possible. [^7]
  
  How few? Well, you tell us. Write, in `greedy.c`, a program that first asks the
  user how much change is owed and then spits out the minimum number of coins
  with which said change can be made. Use `GetFloat` from the CS50 Library to get
  the user’s input and printf from the Standard I/O library to output your
  answer.
  
  We ask that you use `GetFloat` so that you can handle dollars and cents, albeit
  sans dollar sign. In other words, if some customer is owed $9.75 (as in the
  case where a newspaper costs 25¢ but the customer pays with a $10 bill),
  assume that your program’s input will be 9.75 and not $9.75 or 975. However,
  if some customer is owed $9 exactly, assume that your program’s input will be
  9.00 or just 9 but, again, not $9 or 900. Of course, by nature of
  floating-point values, your program will likely work with inputs like 9.0 and
  9.000 as well; you need not worry about checking whether the user’s input is
  “formatted” like money should be. And you need not try to check whether a
  user’s input is too large to fit in a float. But you should check that the
  user’s input makes cents! Er, sense. Using GetFloat alone will ensure that the
  user’s input is indeed a floating-point (or integral) value but not that it is
  non-negative. If the user fails to provide a non- negative value, your program
  should re-prompt the user for a valid amount again and again until the user
  complies. Incidentally, do beware the inherent imprecision of floating-point
  values. [^8] Before doing any math, you’ll probably want to convert the user’s
  input entirely to cents (i.e., from a float to an int) to avoid tiny errors
  that might otherwise add up! [^9] Be careful to round and not truncate your
  pennies!

  So that we can automate some tests of your code, we ask that your program’s
  last line of output be only the minimum number of coins possible: an integer
  followed by \n. Consider the below representative of how your own program
  should behave; highlighted in bold is some user’s input.

      jharvard@appliance (~/pset1): ./greedy O hai! How much change is owed?
      0.41
      4

  By nature of floating-point values, that user could also have inputted just
  .41. (Were they to input 41, though, they’d get many more coins!)
  
  Of course, more difficult users might experience something more like the
  below.
  
      jharvard@appliance (~/pset1): ./greedy O hai! How much change is owed?
      -0.41
      Er, how much change is owed?
      -0.41
      Er, how much change is owed?
      foo
      Retry: 0.41 
      4
  
  Per these requirements (and the sample above), your code will likely have some
  sort of loop. If, while testing your program, you find yourself looping
  forever, remember that you can kill your program (i.e., short-circuit its
  execution) by hitting ctrl-c (sometimes a lot).
  
  We leave it to you to determine how to compile and run this particular
  program!
  
  If you’d like to play with the staff’s own implementation of greedy in the
  appliance, you may execute the below.
  
        ~cs50/pset1/greedy
        float f = 0.01; 
        printf("%.10f\n", f);

  [^7]: By contrast, suppose that a cashier runs out of nickels but still owes some customer 41¢. How many coins does that cashier, if greedy, dispense? How about a “globally optimal” cashier?
 
  [^8]: For instance, 0.01 cannot be represented exactly as a float. Try printing its value to, say, ten decimal places with code like the below:
 
  [^9]: Don’t just cast the user’s input from a float to an int! After all, how many cents does one dollar equal?


## I Saw You.

* Surf on over to [http://isawyouharvard.com/](http://isawyouharvard.com/)
  
  where you’ll find “your source for posting and browsing missed connections,” a
  website created by CS50’s own Tej Toor ’10 as her final project her year. Want
  to let someone special know that you saw him or her the other day? Here’s your
  chance! We won’t know it’s you. [^10]
  
  Anyhow, once we have your attention again, follow the link to Statistics atop
  the site, where you’ll find some neat visuals, among them a bar chart. As of
  the end of Week 1, here’s who is spotting whom:

  ![spotting](spotting.png)
  
  It turns out it’s quite easy to integrate such things into a website these
  days. Tej happens to be using the Google Chart API (a free library of sorts)
  to generate those visuals:
  
  > http://code.google.com/apis/chart/
  
  If curious, documentation for bar charts specifically lives at:
  
  > http://code.google.com/apis/chart/image/docs/gallery/bar_charts.html
  
  We actually use a similar service, the Google Visualization API, for
  HarvardEnergy, a CS50 App with which you can explore Harvard’s energy
  consumption and greenhouse effects:
  
  > http://energy.cs50.net/
  
  Select your own dorm or house via the drop-down menus at top-left to see all
  sorts of interesting data. Here’s what else you can do with that particular
  API:
  
  > http://code.google.com/apis/chart/interactive/docs/gallery.html
  
  Suffice it to say, by term’s end, you’ll be empowered to implement
  ISawYouHarvard and HarvardEnergy alike!
  
  For the moment, though, we’re confined to a command-line environment. But not
  to worry, we can still do some pretty neat things. In fact, we can certainly
  generate bar charts with “ASCII art”. Let’s do it.
  
  [^10]: Or will we? Okay, we won’t.

* Implement, in `chart.c`, a program that prompts a user for four non-negative
  integers (one for each of M spotting F, F spotting M, F spotting F, and M
  spotting M), after which it should generate a horizontal bar chart depicting
  those values, with the first value’s bar on top and the fourth value’s bar on
  the bottom. You may assume that the user’s terminal window is at least 80
  characters wide by 24 characters tall. (You might want to open a terminal
  window of your own, separate from gedit, as via Menu > Programming > Terminal,
  so that you can see more output at once.) Each bar should be represented as a
  horizontal sequence of 0 or more pound signs (#), up to a maximum of 80. The
  length of each bar should be proportional to the corresponding value and
  relative to the four values’ sum. For instance, if the user inputs 10, 0, 0,
  and 0, the first bar should be 80 pound signs in length, since 10 is 100% of
  10 + 0 + 0 + 0 = 10 and 100% of 80 is 80, and the remaining three bars should
  be 0 pound signs in length. By contrast, if the user inputs 5, 5, 0, and 0,
  each of the top two bars should be 40 pound signs in length, since 5 is 50% of
  5 + 5 + 0 + 0 = 10 and 50% of 80 is 40, and the bottom two bars should be 0
  pound signs in length. Accordingly, if the user inputs 2, 2, 2, 2, each of the
  four bars should be 20 pound signs in length, since 2 is 25% of 2+2+2+2 = 8
  and 25% of 80 is 20. Andsoforth. When computing proportions, go ahead and
  round down to the nearest int (as by simply casting any floating-point values
  to int’s). You needn’t worry about overflow; you can assume users’ inputs
  will be reasonably small.
  
  Rather than label each bar on the left as Google does, place each label
  immediately above the corresponding bar; you’re welcome to output some blank
  lines for clarity so long as the last 8 lines of your output are the bars and
  their labels. Unlike Week 2’s progress bar, you chart need not be animated.
  Consider the sample output below; assume that the boldfaced text is what some
  user has typed.
  
      jharvard@appliance (~/pset1): ./chart

      M spotting F: 3 
      F spotting M: 4 
      F spotting F: 1 
      M spotting M: 2

      Who is Spotting Whom
      M spotting F ########################
      F spotting M ################################ 
      F spotting F ########
      M spotting M ################
  
  If you’d like to play with the staff’s own implementation of chart in the
  appliance, you may execute the below.
  
      ~cs50/pset1/chart
  
  This was Problem Set 1.

