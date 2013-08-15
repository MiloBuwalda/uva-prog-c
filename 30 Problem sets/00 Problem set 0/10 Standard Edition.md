# Problem Set 0: Scratch

Test test test...

Per the directions at this document's end, submitting this problem set involves filling out a Web-based form that may take a few minutes, so best not to wait until the very last minute, lest you spend a late day unnecessarily.

### Objectives.

* Introduce some fundamental programming constructs.
* Empower you to design your own animation, game, or interactive art.
* Impress your friends.

### Grades.

Your work on this problem set will be evaluated along two axes primarily.

**Scope**. To what extent does your code implement the features required by our specification?

**Correctness**. To what extent is your code consistent with our specifications and free of bugs?

All students must ordinarily submit this and all other problem sets to be
eligible for a passing grade unless granted an exception in writing by the
course's instructor. Please note that this problem set does not count towards
your final grade.

### Getting Started.

* O hai! Know that help with this and future problem sets is available not only at your workgroups's hours, but also below this web page. We'll do our best to reply to posts within 24 hours!

### Itching to Program?

* Surf on over to the URL below and sign up for an account on MIT's 
  website by clicking Signup atop the page.

  <http://scratch.mit.edu/>

  Any username (that's available) is fine, but take care to remember 
  it and your choice of password.

* Then head to the URL below and take note of the resources available 
  to you before you dive into Scratch itself.

  <http://info.scratch.mit.edu/Support>

  In particular, you might want to skim the Getting Started Guide.

* Next, read through the tutorial below, which presents Scratch in terms 
  a (soon-to-be) programmer should understand.

  <http://www.cs.harvard.edu/malan/scratch/>

* If you're using Scratch on a faculty computer, simply **Start &rarr; Run** and type

		\\practicum-homes.fnwi.uva.nl\data\home\mstegem1\Scratch

* If not already installed on the computer you’re using, download Scratch 
  itself via the URL below.

  <http://scratch.mit.edu/download>

  Take care to download version 1.4. Once downloaded, install the 
  software by double-clicking its icon and/or following any on-screen 
  directions. If unsure how to install, don't hesitate to post a 
  question on this problem set's web page!

* Next head to <http://scratch.mit.edu/projects/lindorniel/40241> to Scratch
  Scratch Revolution by Ann Chi '08 (aka lindorniel). 
  You should find yourself at MIT's website with Ann's project (screenshot
  below) embedded in your browser.

  If you do not see Ann’s project, you may need to download and 
  install a "Java Runtime Environment" (aka "Java Virtual Machine" or 
  "JVM"). To do so, follow the link to Java at 

  <https://www.cs50.net/software/>,

  follow any on-screen instructions, then return to MIT's website. If 
  unsure how to install, don't hesitate to ask on this problem set's
  web page!

  Once Ann's project has loaded in your browser, press your space 
  bar to begin! If the game doesn’t start, try clicking the green
  flag in the project's top-right corner, then hit your space bar
  again. See if you can't beat some of the high scores 
  claimed in the page's Comments. Actually, email the page's URL 
  to a friend, and see if you can't beat him or her!

* If you've no experience (or comfort) whatsoever with programming, 
  rest assured that Ann's project is more complex than what we 
  expect for this first problem set. But it does reveal what you 
  can do with Scratch.

  Let’s take a look at one other project. Head to

  <http://scratch.mit.edu/projects/cs50/37413>

  to see a project you probably haven’t yet seen by Carlos Herrera. 
  This game, too, you can play within the confines of your browser. 
  But let's download its "source code" (i.e., its .sb file). Click 
  the link labeled **cherrera** in the page’s top-right corner, just 
  below **Download this project!** If told by a pop-up to log in, 
  click the link labeled **Login** atop the page and log in with the 
  username and password that you created earlier for MIT's website, 
  then click **cherrera** again. If prompted to open or save the file 
  (called `cherrera.sb`), go ahead and save it to your desktop so 
  that it's easy to find.

  Then launch the non-browser version of Scratch (i.e., the one that 
  you downloaded and installed earlier) by clicking its own icon on
  your desktop, in your Applications folder, or wherever you installed
  it. Click **File &rarr; Open...** toward Scratch's top-left corner,
  and navigate your way to Carlos's project, wherever it ended up 
  on your hard drive.

  Spend some time looking over Carlos's scripts. Don't forget that 
  each sprite has its own set of scripts. Try to get a sense of how
  the overall program works. Try making some changes, even while the 
  program is running, to see how the program responds. Note that this 
  project is probably a bit simpler than we expect of you for this
  problem set, but it's a good one to learn from because it's
  pretty easy to follow. And do appreciate that this game, like all
  Scratch projects, reduces quite literally to some basic building 
  blocks.

* Feel free to download the source code for a few more projects, 
  either from <http://scratch.mit.edu/galleries/> or from Week 0 at
  <https://www.cs50.net/lectures/> even if you already saw it in 
  lecture. Or pull up some of the projects that come with Scratch
  by clicking **File &rarr; Open...** toward Scratch's top-left 
  corner followed by the icon labeled **Examples** in the window 
  that appears.

  For each program, run it to see how it works overall and then 
  look over its scripts to understand how it works underneath the 
  hood. Feel free to make changes to scripts and observe the 
  effects. Once you can say to yourself, "Okay, I think I get
  this," you're ready to proceed.

* Now it's time to choose your own adventure! Your mission is, 
  quite simply, to have fun with Scratch and implement a project 
  of your choice (be it an animation, a game, interactive art, 
  or anything else), subject only to the following requirements.

  1. Your project’s filename must be username.sb, where 
     username is your UvAnetID in all lowercase.
  2. Your project must have at least two sprites, at least 
     one of which must resemble something other than a cat.
  3. Your project must have at least three scripts total (i.e., 
     not necessarily three per sprite).
  4. Your project must use at least one condition, one loop, 
     and one variable.
  5. Your project must use at least one sound.
  6. Your project should be more complex than most of 
     those demonstrated in lecture (many of which, though 
     instructive, were quite short) but it can be less complex 
     than, say, Scratch Scratch Revolution. As such, your 
     project should probably use a few dozen puzzle pieces 
     overall.

  Feel free to peruse additional projects online or those that 
  come with Scratch for inspiration, but your own project should 
  not be terribly similar to any of them. Try to think of an 
  idea on your own, and then set out to implement it. But don't 
  try to implement the entirety of your project all at once: 
  pluck off one piece at a time. Ann, for instance, probably
  implemented just one arrow first, before she moved on to 
  her game's other three. And Carlos probably implemented a 
  stationary goal before he tried to make it move up and down 
  on its own.

  If, along the way, you find it too difficult to implement 
  some feature, try not to fret; alter your design or work 
  around the problem. If you set out to implement an idea that 
  you find fun, you should not find it hard to satisfy this 
  problem set's requirements. If you suspect your program 
  might fall short of our expectations, feel free to ask a 
  member of the staff for an opinion prior to submitting.

  Alright, off you go. Make us proud! If you have questions 
  or want a hand making your project even better, do take 
  advantage the student assistants (uhm). Alternatively, 
  post questions below the problem set's web page!

* Once finished with your project, upload it to your account 
  on MIT's server by clicking **Share &rarr; Share This 
  Project Online...** toward the top of Scratch's window.
  Provide "Your Scratch website login name" (i.e., username) 
  and password that you chose earlier, some project notes
  (e.g., some instructions or a description), and zero or 
  more tags; ensure that your "Project name" is UvAnetID.
  Best to leave Compress sounds and images checked. Then 
  click the OK button. Assuming you're informed that "Your
  project is now online at scratch.mit.edu," head on over to
  the URL below.

  <http://scratch.mit.edu/login>

  (If informed that your project is too large to be 
  uploaded, try to decrease its size by clicking 
  **Edit &rarr; Compress Sounds...** and/or 
  **Edit &rarr; Compress Images...** atop Scratch's
  window. You may need to experiment with different 
  levels of compression. Also take care to remove
  from each of your sprites any sounds that you
  imported but ended up not using. If, despite many 
  attempts, you are still unable to upload your 
  project to MIT's website because of its size, best 
  to ask for advice.)

  Log in (if you aren’t already logged in) with your username 
  and password. Once logged in, click my stuff toward the page's
  top-right corner. You should see the project you just uploaded 
  among *My Projects*. Go ahead and click its name or icon. Your 
  project should be embedded (and may start running) in the 
  window that appears. Take note of the URL in your browser's 
  address bar. That's your project's URL on MIT's website, and 
  you'll need to know it later.

  Note that some projects, particularly those with sound, do 
  not function properly when embedded in MIT's website. Not to 
  worry! We'll be sure to download your .sb file and open it in 
  the non-browser version of Scratch.

* When done admiring your work, head on over to the URL below. 

  <http://scratch.mit.edu/galleries/view/190914>

  Make sure that you're still logged into MIT's website. (If you 
  see "Welcome" followed by your username atop the page, you are.) 
  If not, click Login to log in again.

  Toward the page's right-hand side, click add my projects and 
  wait for a window to appear. Once that window appears, click
  your own project's name, wait for a checkmark to appear to in 
  the box to the left of it, then click Accept. If you return to 
  the URL above, you should find that your project has been 
  added to the gallery for others to enjoy. If not, try once
  more or reach out to the course's staff for assistance.

  If you really, really don't want your work included in the 
  course's gallery, email <help@mprog.nl>.

### How Stuff Works.

* Head to <http://www.explainthatstuff.com/harddrive.html> and
  read up on how hard disk drives (aka HDDs) work. You may also 
  want to re-watch the two videos we saw on Friday of Week 0, 
  both of which are linked under Week 0’s Demos at:

  https://www.cs50.net/lectures/

  Once you feel you've wrapped your mind around the technology, 
  try explaining how HDDs work in a few sentences verbally to a 
  roommate or friend. (For real!) There are far too many people 
  in this world who know what they're talking about but do not 
  know how to explain what they know to non-technical people, 
  so it's very good practice! Plus, we may ask you to explain 
  them to us before long. ;-)

### How to Submit.

* You can submit this first problem set by pasting a link to your online
  project in the submit tab.

