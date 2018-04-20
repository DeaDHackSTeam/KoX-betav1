#! /bin/bash

 bold=`echo -en "\e[1m"`
 underline=`echo -en "\e[4m"`
 dim=`echo -en "\e[2m"`
 strickthrough=`echo -en "\e[9m"`
 blink=`echo -en "\e[5m"`
 reverse=`echo -en "\e[7m"`
 hidden=`echo -en "\e[8m"`
 normal=`echo -en "\e[0m"`
 black=`echo -en "\e[30m"`
 red=`echo -en "\e[31m"`
 green=`echo -en "\e[32m"`
 orange=`echo -en "\e[33m"`
 blue=`echo -en "\e[34m"`
 purple=`echo -en "\e[35m"`
 aqua=`echo -en "\e[36m"`
 gray=`echo -en "\e[37m"`
 darkgray=`echo -en "\e[90m"`
 lightred=`echo -en "\e[91m"`
 lightgreen=`echo -en "\e[92m"`
 lightyellow=`echo -en "\e[93m"`
 lightblue=`echo -en "\e[94m"`
 lightpurple=`echo -en "\e[95m"`
 lightaqua=`echo -en "\e[96m"`
 white=`echo -en "\e[97m"`
 default=`echo -en "\e[39m"`
 BLACK=`echo -en "\e[40m"`
 RED=`echo -en "\e[41m"`
 GREEN=`echo -en "\e[42m"`
 ORANGE=`echo -en "\e[43m"`
 BLUE=`echo -en "\e[44m"`
 PURPLE=`echo -en "\e[45m"`
 AQUA=`echo -en "\e[46m"`
 GRAY=`echo -en "\e[47m"`
 DARKGRAY=`echo -en "\e[100m"`
 LIGHTRED=`echo -en "\e[101m"`
 LIGHTGREEN=`echo -en "\e[102m"`
 LIGHTYELLOW=`echo -en "\e[103m"`
 LIGHTBLUE=`echo -en "\e[104m"`
 LIGHTPURPLE=`echo -en "\e[105m"`
 LIGHTAQUA=`echo -en "\e[106m"`
 WHITE=`echo -en "\e[107m"`
 DEFAULT=`echo -en "\e[49m"`

clear


echo $bold
echo -e "                              $lightaqua ██ ▄█▀ $lightred▒$lightaqua█████  $lightred▒$lightaqua██   ██$lightred▒"
echo -e "                              $lightaqua ██▄█$lightred▒$lightred ▒$lightaqua██$lightred▒$lightaqua  ██$lightred▒▒▒$lightaqua █ █ $lightred▒░"
echo -e "                              $lightred▓$lightaqua███▄$lightred░ ▒$lightaqua██$lightred░$lightaqua  ██$lightred▒░░$lightaqua  █   $lightred░"
echo -e "                              $lightred▓$lightaqua██ █▄ $lightred▒$lightaqua██   ██$lightred░ ░ $lightaqua█ █ $lightred▒ "
echo -e "                              $lightred▒$lightaqua██$lightred▒ $lightaqua█▄$lightred░ $lightaqua████$lightred▓▒░▒$lightaqua██$lightred▒ ▒$lightaqua██$lightred▒"
echo -e "                              $lightred▒ ▒▒ ▓▒░ ▒░▒░▒░ ▒▒ ░ ░▓ ░"
echo -e "                              ░ ░▒ ▒░  ░ ▒ ▒░ ░░   ░▒ ░"
echo -e "                              ░ ░░ ░ ░ ░ ░ ▒   ░    ░  "
echo -e "                              ░  ░       ░ ░   ░    ░  "
echo -e "                $lightyellow########### $lightgreen[$lightyellow CODED BY$lightred Ghosty/DeaDHackS $lightgreen]$lightyellow ###########"
echo -e ""                         
echo -e "                              $lightgreen...$lightred Launching Installer$lightgreen ...$lightyellow"  
sleep 2                       
echo -e "               V---------------------- See$lightblue Logs$lightblue" 
echo -e "$lightgreen[.:.]$lightyellow Checking for any old$lightaqua KoX$lightyellow installation ..."
sleep 2
if [ -d /bin/KoX/ ]
then
  echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"                         
  echo -e "$lightred[X]$lightyellow It seems like a old$lightaqua KoX$lightyellow installation is still there."                         
  read -p "$lightaqua[?]$lightyellow Would you like$lightaqua KoX$lightyellow installer to remove the old data?(Y/N)" rmolddata
  if [ rmolddata == Y ]
  then
    echo -e "$lightgreen[.]$lightyellow Removing all known$lightaqua KoX$lightyellow files ..."  
    echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"                                                
    cd /bin/ 
    rm KoX > /dev/null/
    rm kox > /dev/null/
  else [ rmolddata == N ] 
    echo -e "$lightgreen[.]$lightyellow Not removing old data."  
    echo -e "$lightgreen[.]$lightyellow Launching Script... if we can."                       
    kox
  fi
else
  echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"  
  echo -e "$lightgreen[.]$lightyellow No installation seems to be detected ..."                       
fi
echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"                                                                                      
echo -e "$lightgreen[.:.]$lightyellow Moving$lightaqua KoX$lightyellow Config files ..." 
sleep 4
mv setup.sh /root/Desktop
cd /root/Desktop/
chmod 777 -R KoX
mv KoX /bin/
cd /bin/KoX/
mv kox /bin/   
echo -e "$lightyellowv|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"                                              
echo -e "$lightgreen[.:.]$lightyellow Checking If$lightaqua KoX$lightyellow is installed ..."
sleep 2
if [ -d /bin/KoX ]
then 
  echo -e "$lightgreen[...]$lightyellow$lightaqua KoX$lightyellow Config files seems to be installed!"
  sleep 1
else
  echo -e "$lightred[X]$lightyellow Error$lightaqua KoX$ightyellow doesn't seem to be installed. Check if$lightaqua KoX$lightyellow is on the Desktop and relaunch installer."
  echo -e "$lightred[X]$lightyellow Quiting installer..."
  exit
fi  
clear                      
echo -e "$lightaqua[iTool]$lightyellow Hey!, Its me iTool! I'm the auto-tool installer/downloader for$lightaqua KoX$lightyellow!"                         
echo -e "$lightaqua[iTool]$lightyellow It seems a new KoX is detected! Though doesn't seem like tools that$lightaqua KoX$lightyellow needs are installed ..."
read -p "Would you like iTool to install tools for you?(Y/N)" itool1
clear
if [ $itool1 == Y ]
then
  internet="Unknown"
  echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"
  sleep 1.6 
  echo -e "$lightaqua Internet$lightgreen checking ...$lightyellow"
  ping -c 5 8.8.8.8 > /dev/null || internet="Not Connected"
  if [ $internet == Not Connected ]
  then
    echo -e "$red[!]Fatal error!$lightyellow No internet, please check your connection and re-launch the installer."                         
    echo -e "$red[X]$lightaqua Quiting installer...$lightyellow"
    exit
  else
    echo -e "Internet Connected!"
  fi
   echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|"                         
   echo -e "$lightaqua[i]$lightyellow Installing hping3 ..."
   sleep 2
   apt-get install hping3 
   echo -e "$lightaqua[i]$lightyellow Installing MITMf ..." 
   sleep 2                        
   apt-get install mitmf
   echo -e "$lightaqua[i]$lightyellow Installing WAFW00F ..."
   sleep 2
   cd /bin/KoX
   git clone https://github.com/EnableSecurity/wafw00f
   cd wafw00f
   python setup.py install 
   echo -e "$lightaqua[i]$lightyellow Installing Boom-Hash"
   sleep 2
   cd /bin/KoX
   git clone https://github.com/linuxskills/Boomhash
   cd Boomhash
   echo -e "$lightaqua[iTool]$lightyellow Finish installing."
   sleep 1
   echo -e "$lightaqua[i]$lightaqua kox$lightyellow in terminal to launch$lightaqua KoX$lightyellow"
   sleep 2
   cd Desktop
   mv setup.sh /bin/KoX/Config/InstallerDeinstaller/
   kox
else [ $itool1 == N ]
   echo -e "$lightyellow|$lightgreen+++++++++++++++++++++++++++++++++++++++++++++++++++++++$lightyellow|" 
   echo -e "$red[!]$lightyellow You will need to install the tools later."
   echo -e "$lightaqua[i]$lightaqua KoX$lightyellow in terminal to launch$lightaqua KoX$lightyellow"
   sleep 2
   cd Desktop
   mv setup.sh /bin/KoX/Config/InstallerDeinstaller/
   kox
fi

































































