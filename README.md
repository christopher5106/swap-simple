# Add swap to your VM

This Chef recipe adds swap to your VM. Particularly useful when running `npm install` which can use a lot of memory and be killed during the provisioning.

Tested on Vagrant + Ubuntu 14.04.

Source : [https://www.digitalocean.com/community/tutorials/how-to-configure-virtual-memory-swap-file-on-a-vps](https://www.digitalocean.com/community/tutorials/how-to-configure-virtual-memory-swap-file-on-a-vps)

Add in your Berksfile

    cookbook 'swap-simple', git: 'git://github.com/christopher5106/swap-simple.git'

and add recipe 'swap-simple' in your run list.
