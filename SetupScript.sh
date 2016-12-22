#!/bin/bash

if [[ $EUID -ne 0 ]]
then
  echo This script must be run as root
  exit
fi

if [ $(logname) == "blueteam" ]
then
	echo "Blue Team System Image Setup"

	### Create Incorrect Password Insults ###
	sed -i 's/Defaults\tenv_reset/Defaults\tenv_reset,insults/g' /etc/sudoers
	
	### Set Background Image ###
	cp /media/blueteam/UNTITLED/BlueTeam/bluedragon.jpg Desktop/
	echo SET PICTURE ON DESKTOP TO WALLPAPER, then press enter to continue
	read wait
	mv Desktop/bluedragon.jpg Pictures/

	### Create Terminal Profile ###
	echo -e "Terminal --> Preferences --> Profiles Tab --> New\nGeneral Tab:\n\tProfile name: BlueTeam\n\tInitial terminal size: 256 columns 256 rows\n\tCursor shape: Underline\n\tCheck Terminal Bell, Allow bold text, and Rewrap on resize\nCommand Tab:\n\tCheck first two boxes\nColors Tab:\n\tUncheck Use colors from system theme\n\tBuilt-in schemes: Custom\n\tText color: Blue\n\tBold color: Same as text color\n\tBackground color: Black\n\tCheck Use transparency from system theme\n\tPalette Built-in schemes: Linux console\nPress Close\nDelete Unnamed Profile\nPress Close"
	gnome-terminal --hide-menubar
	
	### Setup Services ###
	apt-get install ufw
	ufw enable
	ufw allow 22
	apt-get install openssh-server -y -qq
	apt-get install sshpass -y -qq
	apt-get install john -y -qq
	apt-get install netcat -y -qq
	apt-get install mcrypt -y -qq
	apt-get install cmatrix -y -qq
	apt-get install unzip -y -qq
	apt-get install htop -y -qq

	### Extra Files ###
	cp -r /media/blueteam/UNTITLED/BlueTeam/"Level 1" /home/blueteam/Desktop/
	chmod 777 /home/blueteam/Desktop/"Level 1"
	cp /media/blueteam/UNTITLED/BlueTeam/nc /home/blueteam/
	chmod 777 /home/blueteam/nc

	### Script Files ###
	mkdir Desktop/.TheDragonsLair
	chmod 777 Desktop/.TheDragonsLair
	cp /media/blueteam/UNTITLED/BlueTeam/Level1Anim.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/Level2Anim.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/Level3Anim.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/Level4Anim.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/Level5Anim.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/Level6Anim.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/customerservice.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/dragon.sh /home/blueteam/Desktop/
	cp /media/blueteam/UNTITLED/BlueTeam/hints.sh /home/blueteam/Desktop/
	chmod 777 /home/blueteam/Desktop/customerservice.sh
	chmod 777 /home/blueteam/Desktop/dragon.sh
	chmod 777 /home/blueteam/Desktop/hints.sh

	echo FIRST, CHANGE IP ADDRESSES IN CS, H, and D, then press enter to continue
	read answer

	### Encrypt Script Files ###
	wget http://www.datsi.fi.upm.es/~frosal/sources/shc-3.8.7.tgz
	tar xvfz shc-3.8.7.tgz
	cd shc-3.8.7
	make
	./shc -f /home/blueteam/Desktop/Level1Anim.sh
	./shc -f /home/blueteam/Desktop/Level2Anim.sh
	./shc -f /home/blueteam/Desktop/Level3Anim.sh
	./shc -f /home/blueteam/Desktop/Level4Anim.sh
	./shc -f /home/blueteam/Desktop/Level5Anim.sh
	./shc -f /home/blueteam/Desktop/Level6Anim.sh
	./shc -f /home/blueteam/Desktop/customerservice.sh
	./shc -f /home/blueteam/Desktop/dragon.sh
	./shc -f /home/blueteam/Desktop/hints.sh
	cd ..
	rm -rf shc-3.8.7.tgz
	rm -rf /home/blueteam/Desktop/Level1Anim.sh
	rm -rf /home/blueteam/Desktop/Level2Anim.sh
	rm -rf /home/blueteam/Desktop/Level3Anim.sh
	rm -rf /home/blueteam/Desktop/Level4Anim.sh
	rm -rf /home/blueteam/Desktop/Level5Anim.sh
	rm -rf /home/blueteam/Desktop/Level6Anim.sh
	rm -rf /home/blueteam/Desktop/customerservice.sh
	rm -rf /home/blueteam/Desktop/dragon.sh
	rm -rf /home/blueteam/Desktop/hints.sh
	rm -rf /home/blueteam/Desktop/Level1Anim.sh.x.c
	rm -rf /home/blueteam/Desktop/Level2Anim.sh.x.c
	rm -rf /home/blueteam/Desktop/Level3Anim.sh.x.c
	rm -rf /home/blueteam/Desktop/Level4Anim.sh.x.c
	rm -rf /home/blueteam/Desktop/Level5Anim.sh.x.c
	rm -rf /home/blueteam/Desktop/Level6Anim.sh.x.c
	rm -rf /home/blueteam/Desktop/customerservice.sh.x.c
	rm -rf /home/blueteam/Desktop/dragon.sh.x.c
	rm -rf /home/blueteam/Desktop/hints.sh.x.c
	chmod 777 /home/blueteam/Desktop/Level1Anim.sh.x
	chmod 777 /home/blueteam/Desktop/Level2Anim.sh.x
	chmod 777 /home/blueteam/Desktop/Level3Anim.sh.x
	chmod 777 /home/blueteam/Desktop/Level4Anim.sh.x
	chmod 777 /home/blueteam/Desktop/Level5Anim.sh.x
	chmod 777 /home/blueteam/Desktop/Level6Anim.sh.x
	chmod 777 /home/blueteam/Desktop/customerservice.sh.x
	chmod 777 /home/blueteam/Desktop/dragon.sh.x
	chmod 777 /home/blueteam/Desktop/hints.sh.x
	chmod +x /home/blueteam/Desktop/Level1Anim.sh.x
	chmod +x /home/blueteam/Desktop/Level2Anim.sh.x
	chmod +x /home/blueteam/Desktop/Level3Anim.sh.x
	chmod +x /home/blueteam/Desktop/Level4Anim.sh.x
	chmod +x /home/blueteam/Desktop/Level5Anim.sh.x
	chmod +x /home/blueteam/Desktop/Level6Anim.sh.x
	chmod +x /home/blueteam/Desktop/customerservice.sh.x
	chmod +x /home/blueteam/Desktop/dragon.sh.x
	chmod +x /home/blueteam/Desktop/hints.sh.x
	mv /home/blueteam/Desktop/Level1Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/Level2Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/Level3Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/Level4Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/Level5Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/Level6Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/customerservice.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/dragon.sh.x Desktop/.TheDragonsLair/
	mv /home/blueteam/Desktop/hints.sh.x Desktop/.TheDragonsLair/
	rm -rf /home/blueteam/Desktop/hints.sh~
	rm -rf /home/blueteam/Desktop/dragon.sh~
	rm -rf /home/blueteam/Desktop/customerservice.sh~
	rm -rf /home/blueteam/Desktop/Level1Anim.sh~
	rm -rf /home/blueteam/Desktop/Level2Anim.sh~
	rm -rf /home/blueteam/Desktop/Level3Anim.sh~
	rm -rf /home/blueteam/Desktop/Level4Anim.sh~
	rm -rf /home/blueteam/Desktop/Level5Anim.sh~
	rm -rf /home/blueteam/Desktop/Level6Anim.sh~

	### n00b Account ###
	echo Set password to 'aloha'
	adduser n00b
	gpasswd -a n00b sudo
	gpasswd -a n00b adm
	gpasswd -a n00b lpadmin
	gpasswd -a n00b sambashare

	cp /media/blueteam/UNTITLED/BlueTeam/emailPasswordScript.sh Desktop/
	./shc -f /home/blueteam/Desktop/emailPasswordScript.sh
	rm -rf /home/blueteam/Desktop/emailPasswordScript.sh
	rm -rf /home/blueteam/Desktop/emailPasswordScript.sh.x.c
	mkdir /home/n00b/Desktop
	chmod 777 /home/n00b/Desktop
	mv /home/blueteam/Desktop/emailPasswordScript.sh.x /home/n00b/Desktop/
	chmod 777 /home/n00b/Desktop/emailPasswordScript.sh.x
	chmod +x /home/n00b/Desktop/emailPasswordScript.sh.x
	echo "For all you fellow n00bs out there, go to Terminal and type 'sudo ./Desktop/emailPasswordScript.sh.x' to run my script and get the password." > /home/n00b/Desktop/howToRunEmailPasswordScript.txt
	rm -rf shc-3.8.7/
	
	### Create Aliases ###
	echo -e "alias customerservice='sudo Desktop/.TheDragonsLair/customerservice.sh.x'\nalias dragon='sudo Desktop/.TheDragonsLair/dragon.sh.x'\nalias hints='sudo Desktop/.TheDragonsLair/hints.sh.x'" >> ~/.bashrc
	source ~/.bashrc

	echo RUN hostsystem@[IP ADDRESS], THE PASSWORD IS BiermanProductions7682.\nEnable autologin for RedTeam.\nPress enter to continue...
	read wait

elif [ $(logname) == "redteam" ]
then
	echo "Red Team System Image Setup"

	### Create Incorrect Password Insults ###
	sed -i 's/Defaults\tenv_reset/Defaults\tenv_reset,insults/g' /etc/sudoers
	
	### Set Background Image ###
	cp /media/redteam/UNTITLED/RedTeam/reddragon.jpg Desktop/
	echo SET PICTURE ON DESKTOP TO WALLPAPER, then press enter to continue
	read wait
	mv Desktop/reddragon.jpg Pictures/

	### Create Terminal Profile ###
	echo -e "Terminal --> Preferences --> Profiles Tab --> New\nGeneral Tab:\n\tProfile name: RedTeam\n\tInitial terminal size: 256 columns 256 rows\n\tCursor shape: Underline\n\tCheck Terminal Bell, Allow bold text, and Rewrap on resize\nCommand Tab:\n\tCheck first two boxes\nColors Tab:\n\tUncheck Use colors from system theme\n\tBuilt-in schemes: Custom\n\tText color: Red\n\tBold color: Same as text color\n\tBackground color: Black\n\tCheck Use transparency from system theme\n\tPalette Built-in schemes: Linux console\nPress Close\nDelete Unnamed Profile\nPress Close"
	gnome-terminal --hide-menubar
	echo Create Terminal profile, then press enter to continue
	read wait

	### Setup Services ###
	apt-get install ufw
	ufw enable
	ufw allow 22
	apt-get install openssh-server -y -qq
	apt-get install sshpass -y -qq
	apt-get install john -y -qq
	apt-get install netcat -y -qq
	apt-get install mcrypt -y -qq
	apt-get install cmatrix -y -qq
	apt-get install unzip -y -qq
	apt-get install htop -y -qq

	### Extra Files ###
	cp -r /media/redteam/UNTITLED/RedTeam/"Level 1" /home/redteam/Desktop/
	chmod 777 /home/redteam/Desktop/"Level 1"
	cp /media/redteam/UNTITLED/RedTeam/nc /home/redteam/
	chmod 777 /home/redteam/nc

	### Script Files ###
	mkdir /home/.TheDragonsLair
	chmod 777 /home/.TheDragonsLair
	cp /media/redteam/UNTITLED/RedTeam/Level1Anim.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/Level2Anim.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/Level3Anim.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/Level4Anim.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/Level5Anim.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/Level6Anim.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/customerservice.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/dragon.sh /home/redteam/Desktop/
	cp /media/redteam/UNTITLED/RedTeam/hints.sh /home/redteam/Desktop/
	chmod 777 /home/redteam/Desktop/customerservice.sh
	chmod 777 /home/redteam/Desktop/dragon.sh
	chmod 777 /home/redteam/Desktop/hints.sh
	
	echo FIRST, CHANGE IP ADDRESSES IN CS, H, and D, then press enter to continue
	read answer

	### Encrypt Script Files ###
	wget http://www.datsi.fi.upm.es/~frosal/sources/shc-3.8.7.tgz
	tar xvfz shc-3.8.7.tgz
	cd shc-3.8.7
	make
	./shc -f /home/redteam/Desktop/Level1Anim.sh
	./shc -f /home/redteam/Desktop/Level2Anim.sh
	./shc -f /home/redteam/Desktop/Level3Anim.sh
	./shc -f /home/redteam/Desktop/Level4Anim.sh
	./shc -f /home/redteam/Desktop/Level5Anim.sh
	./shc -f /home/redteam/Desktop/Level6Anim.sh
	./shc -f /home/redteam/Desktop/customerservice.sh
	./shc -f /home/redteam/Desktop/dragon.sh
	./shc -f /home/redteam/Desktop/hints.sh
	cd ..
	rm -rf shc-3.8.7.tgz
	rm -rf /home/redteam/Desktop/Level1Anim.sh
	rm -rf /home/redteam/Desktop/Level2Anim.sh
	rm -rf /home/redteam/Desktop/Level3Anim.sh
	rm -rf /home/redteam/Desktop/Level4Anim.sh
	rm -rf /home/redteam/Desktop/Level5Anim.sh
	rm -rf /home/redteam/Desktop/Level6Anim.sh
	rm -rf /home/redteam/Desktop/customerservice.sh
	rm -rf /home/redteam/Desktop/dragon.sh
	rm -rf /home/redteam/Desktop/hints.sh
	rm -rf /home/redteam/Desktop/Level1Anim.sh.x.c
	rm -rf /home/redteam/Desktop/Level2Anim.sh.x.c
	rm -rf /home/redteam/Desktop/Level3Anim.sh.x.c
	rm -rf /home/redteam/Desktop/Level4Anim.sh.x.c
	rm -rf /home/redteam/Desktop/Level5Anim.sh.x.c
	rm -rf /home/redteam/Desktop/Level6Anim.sh.x.c
	rm -rf /home/redteam/Desktop/customerservice.sh.x.c
	rm -rf /home/redteam/Desktop/dragon.sh.x.c
	rm -rf /home/redteam/Desktop/hints.sh.x.c
	chmod 777 /home/redteam/Desktop/Level1Anim.sh.x
	chmod 777 /home/redteam/Desktop/Level2Anim.sh.x
	chmod 777 /home/redteam/Desktop/Level3Anim.sh.x
	chmod 777 /home/redteam/Desktop/Level4Anim.sh.x
	chmod 777 /home/redteam/Desktop/Level5Anim.sh.x
	chmod 777 /home/redteam/Desktop/Level6Anim.sh.x
	chmod 777 /home/redteam/Desktop/customerservice.sh.x
	chmod 777 /home/redteam/Desktop/dragon.sh.x
	chmod 777 /home/redteam/Desktop/hints.sh.x
	chmod +x /home/redteam/Desktop/Level1Anim.sh.x
	chmod +x /home/redteam/Desktop/Level2Anim.sh.x
	chmod +x /home/redteam/Desktop/Level3Anim.sh.x
	chmod +x /home/redteam/Desktop/Level4Anim.sh.x
	chmod +x /home/redteam/Desktop/Level5Anim.sh.x
	chmod +x /home/redteam/Desktop/Level6Anim.sh.x
	chmod +x /home/redteam/Desktop/customerservice.sh.x
	chmod +x /home/redteam/Desktop/dragon.sh.x
	chmod +x /home/redteam/Desktop/hints.sh.x
	mv /home/redteam/Desktop/Level1Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/Level2Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/Level3Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/Level4Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/Level5Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/Level6Anim.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/customerservice.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/dragon.sh.x Desktop/.TheDragonsLair/
	mv /home/redteam/Desktop/hints.sh.x Desktop/.TheDragonsLair/
	rm -rf /home/redteam/Desktop/hints.sh~
	rm -rf /home/redteam/Desktop/dragon.sh~
	rm -rf /home/redteam/Desktop/customerservice.sh~
	rm -rf /home/redteam/Desktop/Level1Anim.sh~
	rm -rf /home/redteam/Desktop/Level2Anim.sh~
	rm -rf /home/redteam/Desktop/Level3Anim.sh~
	rm -rf /home/redteam/Desktop/Level4Anim.sh~
	rm -rf /home/redteam/Desktop/Level5Anim.sh~
	rm -rf /home/redteam/Desktop/Level6Anim.sh~

	### n00b Account ###
	echo Set password to 'hello'
	adduser n00b
	gpasswd -a n00b sudo
	gpasswd -a n00b adm
	gpasswd -a n00b lpadmin
	gpasswd -a n00b sambashare

	cp /media/redteam/UNTITLED/RedTeam/emailPasswordScript.sh Desktop/
	./shc -f /home/redteam/Desktop/emailPasswordScript.sh
	rm -rf /home/redteam/Desktop/emailPasswordScript.sh
	rm -rf /home/redteam/Desktop/emailPasswordScript.sh.x.c
	mkdir /home/n00b/Desktop
	chmod 777 /home/n00b/Desktop
	mv /home/redteam/Desktop/emailPasswordScript.sh.x /home/n00b/Desktop/
	chmod 777 /home/n00b/Desktop/emailPasswordScript.sh.x
	chmod +x /home/n00b/Desktop/emailPasswordScript.sh.x
	echo "For all you fellow n00bs out there, go to Terminal and type 'sudo ./Desktop/emailPasswordScript.sh.x' to run my script and get the password." > /home/n00b/Desktop/howToRunEmailPasswordScript.txt
	rm -rf shc-3.8.7/

	### Create Aliases ###
	echo -e "alias customerservice='sudo Desktop/.TheDragonsLair/customerservice.sh.x'\nalias dragon='sudo Desktop/.TheDragonsLair/dragon.sh.x'\nalias hints='sudo Desktop/.TheDragonsLair/hints.sh.x'" >> ~/.bashrc
	source ~/.bashrc

	echo RUN hostsystem@[IP ADDRESS], THE PASSWORD IS BiermanProductions7682.\nEnable autologin for RedTeam.\nPress enter to continue...
	read wait

elif [ $(logname) == "hostsystem" ]
then
	### Setup Services ###
	apt-get install ufw
	ufw enable
	ufw allow 22
	apt-get install openssh-server -y -qq
	apt-get install sshpass -y -qq
	apt-get install john -y -qq
	apt-get install mcrypt -y -qq
	apt-get install cmatrix -y -qq
	apt-get install unzip -y -qq
	apt-get install htop -y -qq
	
	# Files for CTF
	cp /media/hostsystem/UNTITLED/HostSystem/Stats.txt /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/BTLevel2.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/BTLevel3.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/BTLevel4.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/BTLevel5.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/BTLevel6.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/RTLevel2.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/RTLevel3.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/RTLevel4.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/RTLevel5.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/RTLevel6.zip /home/hostsystem/Desktop/
	cp /media/hostsystem/UNTITLED/HostSystem/Scoreboard.sh /home/hostsystem/Desktop/
	chmod 777 /home/hostsystem/Desktop/Stats.txt
	chmod 777 /home/hostsystem/Desktop/BTLevel2.zip
	chmod 777 /home/hostsystem/Desktop/BTLevel3.zip
	chmod 777 /home/hostsystem/Desktop/BTLevel4.zip
	chmod 777 /home/hostsystem/Desktop/BTLevel5.zip
	chmod 777 /home/hostsystem/Desktop/BTLevel6.zip
	chmod 777 /home/hostsystem/Desktop/RTLevel2.zip
	chmod 777 /home/hostsystem/Desktop/RTLevel3.zip
	chmod 777 /home/hostsystem/Desktop/RTLevel4.zip
	chmod 777 /home/hostsystem/Desktop/RTLevel5.zip
	chmod 777 /home/hostsystem/Desktop/RTLevel6.zip
	chmod 777 /home/hostsystem/Desktop/Scoreboard.sh
	chmod +x /home/hostsystem/Desktop/Scoreboard.sh

	### Set Background Image ###
	cp /media/hostsystem/UNTITLED/HostSystem/greendragon.jpg Desktop/
	echo SET PICTURE ON DESKTOP TO WALLPAPER, then press enter to continue
	read wait
	mv Desktop/greendragon.jpg Pictures/
fi

