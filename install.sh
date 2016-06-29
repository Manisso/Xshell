#!/bin/bash
echo "
███╗   ███╗ █████╗ ███╗   ██╗██╗███████╗███████╗ ██████╗
████╗ ████║██╔══██╗████╗  ██║██║██╔════╝██╔════╝██╔═══██╗
██╔████╔██║███████║██╔██╗ ██║██║███████╗███████╗██║   ██║
██║╚██╔╝██║██╔══██║██║╚██╗██║██║╚════██║╚════██║██║   ██║
██║ ╚═╝ ██║██║  ██║██║ ╚████║██║███████║███████║╚██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝ ╚═════╝ 
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~
  █   █  █ █  █ █   ▀▀█ 
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀             

                                                ";
echo "";
echo "[✔] Install.sh will install xshell tool in the system [Y/N] :" ;
read baba
if [ $baba == "y" ] ; 
  then
    echo " "
  else
    exit
fi

echo "[✔] Where Do you want to install the tool? [Ex:/usr/share/doc]:";
read refdir
echo "[✔] Checking directories..."
if [ -d "$refdir/Manisso-Tools" ] ;
then
echo "[◉] A directory Manisso-Tools was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "$refdir/Manisso-Tools"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/Manisso/Xshell.git $refdir/Manisso-Tools;
 echo "#!/bin/bash 
 perl $refdir/Manisso-Tools/xshell.pl" '${1+"$@"}' > xshell;
 chmod +x xshell;
 sudo cp xshell /usr/bin/;
 rm xshell;


if [ -d "$refdir/Manisso-Tools" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute Xshell by typing xshell !   ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
