# Introduction

You might need to enable Apache on your virtual machine for this problem set.
Perform the following commands in your terminal to do so:

	sudo chkconfig httpd on
	sudo service httpd start
  
*If you started in semester 1 (before Februari 2014)*, this problem set will be
graded live. This means that you will have to present your implementation of
this problem set to an assistant in order to be graded.

*If you started in semester 2 (after Februari 2014)*, this problem set will be
graded on your submission alone (like previous problem sets).

*In both cases*, when you are done, you should dump your MySQL database to a
.SQL file, which can be done in phpMyAdmin under the *Export* tab. Compress both
your website implementation and your database together in a single file called
pset7.tar.gz. Assuming your .SQL file rests within your pset7 folder alongside
your implementation itself, you can do so with the following command:

	tar -czvf pset7.tar.gz pset7
  
Make absolutely sure your website and all required files are included in the tar
file you submit. *If your file does not contain all required files, we cannot
test or grade it.* To ensure yourself this is the case, reconstruct your website
from scratch using only the tar file you just submitted. Even if you are amongst
those that will have their website graded live, it's still required to submit
this tar file for our administration.
