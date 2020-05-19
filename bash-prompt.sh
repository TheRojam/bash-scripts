# (1) prompt user, and read command line argument
read -p "Run the cron script now? " answer

# (2) handle the command line argument we were given
while true
do
  case $answer in
   [yY]* ) /usr/bin/wget -O - -q -t 1 http://www.example.com/cron.php
           echo "Okay, just ran the cron script."
           break;;

   [nN]* ) exit;;

   * )     echo "Dude, just enter Y or N, please."; break ;;
  esac
done
