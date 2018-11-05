# DNS-Changer-Batch-Script

Hi!

This is a script I made myself, it's purpose is to change DNS of your PC's network cards between DHCP, Google's DNS and Cloudflare (by APNIC) DNS.

This idea started with my habit of changing IPv4's DNS of my Wi-Fi card to Google DNS in order to access blocked websites. I always did this. The problem began when I was at university and couldn't connect to the Wireless Network... Ended up understading that the problem was that I had Google DNS on my PC and should have default/auto mode/DHCP...

Later I saw myself manually changing DNS of network cards to often. Then decided to create a batch script to automatically change Ethernet and Wi-Fi cards for Google DNS and also capable of going back to DHCP.

## HOW TO:

In order to use the script you need to have your Ethernet card named "Ethernet" and your Wi-Fi card named "Wi-Fi". Like this:

![alt text](https://i.imgur.com/coDKTJQ.png)

Then, copy the batch file to your Desktop and everytime you want to run it you need to **RUN AS ADMINISTRATOR**:

![alt text](https://image.prntscr.com/image/-0lLgq6DTLyRsOSconfJIg.png)

And it's done! ;)

### Another option to run as administrator:
Create a shortcut of the file, then change the shortcut proprieties to run as administrator. Like this, you only need to double click the shortcut to execute this properly.
