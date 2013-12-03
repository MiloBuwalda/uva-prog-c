# Getting started

<ul>
<li><p>If using C for your final project (and the CS50 Appliance), odds are you'll want to execute commands like the below.</p>
<div class="notranslate syntax"><pre>cd ~/Dropbox
mkdir project
cd project
gedit project.c
</pre></div></li>
<li><p>If using CSS, HTML, and PHP for your final project (and the CS50 Appliance), odds are you'll find it easiest to develop inside of <code class="notranslate">~/vhosts/localhost</code>.  But since your implementation of Problem Set 7 is presumably there at the moment, first execute</p>
<div class="notranslate syntax"><pre>mkdir ~/Dropbox/pset7
mv ~/vhosts/localhost/* ~/Dropbox/pset7
</pre></div>
<p>in order to move everything from <code class="notranslate">~/vhosts/localhost</code> into a new folder called <code class="notranslate">pset7</code> inside of your <code class="notranslate">~/Dropbox</code> directory for safe-keeping.</p>

<p>Then, if you'd like to create a new, empty <code class="notranslate">html</code> directory for your final project's web-accessible content can live, you can execute the below.</p>
<div class="notranslate syntax"><pre>mkdir ~/vhosts/localhost/html
chmod 711 ~/vhosts/localhost/html
</pre></div>
<p>Alternatively, you might find it easiest to start with a fresh copy of Problem Set 7's distribution code and then modify it as you see fit, in which case you can instead execute the below.</p>
<div class="notranslate syntax"><pre>cd ~/vhosts/localhost
wget http://cdn.cs50.net/2012/fall/psets/7/pset7.zip
unzip pset7.zip
rm -f pset7.zip
</pre></div></li>
<li><p>If using MySQL for your final project (and the CS50 Appliance), recall that you can create a database by visiting</p>

<p><a class="notranslate" href="http://localhost/phpMyAdmin/" target="_blank" title="">http://localhost/phpMyAdmin/</a></p>

<p>using Chrome <u>inside of the appliance</u>.  Log in as John Harvard if prompted (with a username of <strong>jharvard</strong> and a password of <strong>crimson</strong>).  Then click phpMyAdmin's <strong>Databases</strong> tab, which will allow you to create a database called, say, <code class="notranslate">project</code>.  (If using Problem Set 7's distro code as a foundation for your final project, be sure to edit <code class="notranslate">config.php</code> accordingly.)</p></li>
<li><p>If using some other language(s) or environment for your final project, we leave it to you to determine how to get started!</p>

<p>Though do beware if using PHP in some environment other than the CS50 Appliance.  The CS50 Appliance supports (and Problem Set 7 assumes) PHP 5.4, whereas some commercial web hosts only support 5.3 or earlier.  Realize that syntax like</p>
<div class="notranslate syntax"><pre><span class="x">$arr = ["a" =&gt; 1, "b" =&gt; 2, "c" =&gt; 3];</span>
</pre></div>
<p>was introduced in PHP 5.4.  In earlier versions of PHP, you'll need to use syntax like</p>
<div class="notranslate syntax"><pre><span class="x">$arr = array("a" =&gt; 1, "b" =&gt; 2, "c" =&gt; 3);</span>
</pre></div>
<p>instead.  See <a href="http://php.net/manual/en/migration54.changes.php">http://php.net/manual/en/migration54.changes.php</a> for other differences.</p></li>
</ul>