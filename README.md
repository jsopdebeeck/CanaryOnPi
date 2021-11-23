# Install rPi

Source a Raspberry Pi, or in my case I just used one that I had sitting around. I am using a Model Pi 4 but this should work with most versions, though I would recommend one with a wired Ethernet connection (so a Pi Zero is probably not the best).
Similarly I recommend having a keyboard, mouse and screen attached for the first parts at least.
Install the latest Raspberry Pi OS, which can be found at https://www.raspberrypi.org/downloads/ .

# Change your Mac Address

You can skip this stage, but if you do then anyone looking on the network will see the mac address of a Raspberry Pi and will know that this is not what it appears to be.

So decide what you want the Pi to look like and find a mac address of a suitable device. In my case I was planning on making it look like a Synology NAS. So I searched online to find sample mac addresses for these devices. I found a number that start 00:11:32:xx:xx:xx and so chose that as a basis and randomly picked the lower 3 bytes.


# CanaryOnPi
Install HoneyPot on Raspberry Pi

Configure it with the required services you want to trap

Forward your alerts


A really complete (not mine) post is available here https://simpaul.com/open-canary-on-a-pi/ 
