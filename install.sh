clear 
#!/usr/bin/env bash

spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

printf ' Sleeping terminal, to prevent crashes in uterm and grub/boot '
spinner &

sleep 5  # sleeping for 10 seconds is important work

kill "$!" # kill the spinner
printf '\n'
echo '.'
echo 'changing transparency'
sudo apt-get install dconf-editor 
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:[target-profile-UUID]/ background-transparency-percent 50

echo '--------------------------------'
echo 'installing all required elements'
echo '--------------------------------'

echo 'running basic installs '
echo 'hacking tools like nmap, aircrack ( wifi hacking ), and etherape will be '
echo 'installed to make sure system reb is in place and can run correctly without issues '

sleep 1 

echo 'sleeping system for 10 seconds to ready uterm '

spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}
printf 'running installs, updates, will need root as sudo......'
spinner &

sleep 10 # sleeping for 10 seconds is important work

kill "$!" # kill the spinner
printf '\n'

sleep 1
clear
echo '----------------DATE At Start----------'
date 
echo '---------------------------------------'
sudo apt-get install python3 
sleep 1 
sudo apt-get install aircrack-ng 
sleep 1 
sudo apt-get install nmap
sleep 1 
sudo apt-get install etherape 
sleep 1 
sudo apt-get install gnome-terminal
sleep 1 
sudo apt-get install netsniff-ng 
sleep 1 
sudo apt-get arp-scan 

echo '----- running tests ----- '
gnome-terminal -- sudo netsniff-ng 
gnome-terminal -- iwconfig && sleep 6 
gnome-terminal -- ifconfig && sleep 1 
gnome-terminal -- sudo arp-scan -l && sleep 1000 
echo '----------Tests have finished, all terminals can be closed now--------'
echo 'havge a nice one '
echo '------------------ rebooting system to make changes ----------------- '
reboot 


