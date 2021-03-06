General
-------
Words of wisdom: if you have any problems related to new installation (e.g. no wifi adapter found), *always* start googling for solutions related to your specific machine (e.g. Dell XPS 15), not for general approaches!

* First and foremost, redirect (i.e. effectively block) pernicious websites (e.g. Facebook, YouTube, Reddit) to localhost in `/etc/hosts/` 
* Install Chrome: https://askubuntu.com/questions/510056/how-to-install-google-chrome
* Install Vimium: https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
* Permanently switch Caps Lock and Esc: https://askubuntu.com/questions/363346/how-to-permanently-switch-caps-lock-and-esc (Ubuntu 16.04) or https://askubuntu.com/questions/1059663/remapping-caps-lock-to-escape-in-ubuntu-18-04-bionic (Ubunu 18.04)
* Quickly switch between keyboard layouts: https://askubuntu.com/questions/1029588/18-04-ctrlshift-to-change-language
* Install vim-gtk: sudo apt install vim-gtk
* Increase key repeat time and delay (put into ~/.xinitrc for startx to pick it up): xset r rate 250 120
* Disable error sound: https://askubuntu.com/questions/1030515/turn-off-error-sound-on-ubuntu-18-04
* If lspci hangs the system, blacklist (disable loading) nouveau (a free and open-source graphics driver for NVIDIA written by independent software engineers): https://askubuntu.com/questions/841876/how-to-disable-nouveau-kernel-driver/951892#951892
* Connecting to GitHub with SSH (necessary when using 2FA): https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh 
* Installing Miniconda2: https://docs.conda.io/en/latest/miniconda.html. Once installed, run `sudo bash -c 'echo "PATH=$HOME/miniconda2/bin/:\$PATH" > /usr/local/bin/initconda'` to be able to add conda dynamically into your path by calling `initconda`
* Creating ssh aliases: https://www.ostechnix.com/how-to-create-ssh-alias-in-linux/
    
Specific
--------
* Getting wifi working on Dell XPS 15: https://support.killernetworking.com/knowledge-base/killer-ax1650-in-debian-ubuntu-16-04/
* Solving "gpu fallen off the bus" error on Dell XPS 15: https://forums.linuxmint.com/viewtopic.php?t=258577
* Dynamically initializing ros env vars: `sudo bash -c 'printf "source /opt/ros/kinetic/setup.bash\nsource $HOME/echo/devel/setup.bash" > /usr/local/bin/initros'`

