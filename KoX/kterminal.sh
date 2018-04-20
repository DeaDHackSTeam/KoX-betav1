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
echo -e "Welcome To$lightaqua KoX$lightyellow Shell$normal Terminal."
echo -e "2018: V.0.0.1 -$ Coded By Ghosty & YouKnowMe|DeaDHackS"
# | START MAIN FUNCTION 
# V 
largefunc () {

  shelltag="Terminal Shell > "
  
  shellterm () {  # <--- START OF SHELL FUNCTION
  echo 
  read -p "$shelltag" shellcmd
  } # <--- END OF SHELL FUNCTION

  shellterm

case $shellcmd in
         help)  echo "   
[!] Do help when using a module to see there commands [!] 
    help - Display Shell Commands.
    set_module - Set module.
    options - Shows avaible options when module is used.
    quit - Close terminal.
    credits - Show Credits."
    largefunc ;;
         quit) kox ;;
      credits)    echo -e "-----------=[ kTerminal ]=-----------" 
   echo -e "kTerminal - Created For KoX but will be impleted for Ify and other future scripts." 
   echo -e "Version: V.0.0.1." 
   echo -e "Coded With: Bash Scripts." 
   echo -e "Created By: Ghosty & YouKnowMe from DeaDHackS Team!" 
   echo -e "Created on 19 April 2018." 
   echo 
   echo -e "Description: kTerminal is a bash shell coded script to provide" 
   echo -e "a terminal that can be used as a gnome-terminal for users" 
   echo -e "that likes a bit of old stylish interfaces."
   echo -e "kTerminal was coded for KoX but it will be impleted in Ify and other of my scripts." 
   echo -e "You can also send me your own coded modules to my email: deadhacksteam@gmail.com." 
   echo -e "If you can't send the file simply make a download link and send it!" 
   echo 
   echo -e "Make sure your module has:" 
   echo -e "Values that can be set by "set_uwordlist" etc depending on your module." 
   echo -e "Make sure its working." 
   echo -e "Make sure there is no malicious command in it i will check it anyways." 
   echo -e "You can also provide your name in the module description etc!" 
   echo -e "Modules can be of any type: exploit, dos etc."
   echo -e "The module can be in any languges, Ruby, perl etc" 
   echo
   echo -e "Fun Fact: kTerminal was originaly coded with Ruby but ..."
   echo -e "Ghosty is too bad with Ruby :C." 
   echo -e "And Kali has an outdated version of Ruby etc so it wont be working on some PCs SO!" 
   echo -e "I coded it with bash so i'm sure everyone can use it and" 
   echo -e "bash shells are a language that i understand well unlike Python, perl and Ruby etc." 
   largefunc ;;
esac


if [ $shellcmd == set_module ]
then
  echo -e "---- [ Modules ] ----"
  echo -e "[1]. DoS v.0.1 - Deauth WiFi Hosts(Kick hosts out)."
  echo -e "[2]. Sniff v.0.1 - Sniff private data."
  echo -e "[3]. WiFi Jammer v.0.1 - Jam WiFis!"
  echo -e "[4]. Port Scanner v.0.1- Scanner Ports for protocol and services version."
  read -p "Mew$lightred Module$normal > " modulenew
  dos="DoS"
  sniff="Sniff"
  wifij="WiFi Jammer"
  pscanner="Port Scanner"
  case $modulenew in
           1) echo -e "New$lightred Module$lightgreen set$normal ==> $dos"
           exec /bin/KoX/Config/Modules/DoS.sh ;;
           2) echo -e "New$lightred Module$lightgreen set$normal ==> $sniff"
           exec /bin/KoX/Config/Modules/sniff.sh ;;
           3) echo -e "New$lightred Module$lightgreen set$normal ==> $wifij"
           exec /bin/KoX/Config/Modules/wifijammer.sh ;;
           4) echo -e "New$lightred Module$lightgreen set$normal ==> $pscanner"
           exec /bin/KoX/Config/Modules/pscanner.sh ;;
           *) echo -e "$lightred[!]Invalide Module!$normal"
           largefunc ;;
  esac
fi 

 


} # <-- "{" ENDING OF MAIN FUNCTION
largefunc













