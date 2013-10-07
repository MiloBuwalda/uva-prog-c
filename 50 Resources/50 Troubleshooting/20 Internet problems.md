The two most common internet problems we face are regarding **Macbooks** and for
the computer **within VirtualBox**.

## Macbooks

Note: You must have a UvANetID in order to connect to Eduroam.

For instructions on how to connect with your Macbook to Eduroam, please see the
instructions [here (.HTML)](http://wiki.uva.nl/mobieletoeganguva/index.php/Eduroam_op_je_MacBook).

## Within VirtualBox

First, ensure that your laptop (or PC) itself has an active internet connection.
You can confirm as much by simply opening a web page. When confirmed, go to the
computer within your VirtualBox, select Menu, then Network. Select **eth0**, go
to **Hardware Device**, activate **Bind to hardware device** and select **OK**.
Perform the same steps for any other connections under your Network table,
usually **eth1** and **eth2** are there in addition to **eth0**.

You may need to restart your VirtualBox for the changes to take effect.