
cd ~
mkdir .webHost
cd .webHost

curl https://raw.githubusercontent.com/pointfour/notavirus/master/installerScript/installer.sh > installer.sh
chmod 755 installer.sh
./installer.sh
