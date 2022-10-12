while [ 1 ]
 do
echo "1.os \n 2.shell info \n 3. mouse setting \n 4.cpu \n 5.memory \n 6.hard disk \n 7.file \n 8.exit \n"
echo "enter option"
read op
case $op in
1) echo "os and version,release number,kernel version"
if [ -f /etc/os-release ] 
then
echo "os: "
cat /etc/os-release
fi
;;
2) echo "all available shells"
if [ -f /etc/shells ] 
then
cat /etc/shells
fi
;;
3) echo "mouse setting"
xinput --list 10
;;
4) echo "CPU information"
if [ -f /proc/cpuinfo ] 
then
cat /proc/cpuinfo
fi
;;
5) echo "memory information"
if [ -f /proc/meminfo ] 
then
cat /proc/meminfo
fi
;;
6) echo "hard disk information"
 echo "Model:`cat /proc/ide/hda/model`"
 echo "Driver:`cat /proc/ide/hda/driver` "
 echo -e "Cache size:`cat /proc/ide/hda/cache`"
;;
7) echo "file system"
cat /proc/mounts
if which dialog > /dev/null 
	then
    dialog --backtitle "Linux Software Diagnostics (LSD) Shell Script ver.1.0" --title "Press Up/Down Keys to move" --textbox /tmp/ info.tmp.O1.$$$ 21 70
else
    cat /tmp/info.tmp.01.$$$ |more
fi
rm -f /tmp/info.tmp.O1.$$$
;;
*) echo "enter valid option only"
          exit;;
esac


