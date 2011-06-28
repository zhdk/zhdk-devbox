#!/bin/bash

echo "Copying a link to the Pro Git book to the desktop you, so you know how to use git"

echo "[Desktop Entry]" >> ~/Desktop/pro_git.desktop
echo "Encoding=UTF-8" >> ~/Desktop/pro_git.desktop
echo "Name=Link to Pro Git Book" >> ~/Desktop/pro_git.desktop
echo "Type=Link" >> ~/Desktop/pro_git.desktop
echo "URL=http://progit.org/" >> ~/Desktop/pro_git.desktop
echo "Icon=gnome-fs-bookmark" >> ~/Desktop/pro_git.desktop



echo "++ In the following dialog, you will be asked for a MySQL root password. ++"
echo "++ Please enter nothing as root password, just press enter.              ++"
sleep 5

echo "Installing base packages. This will take a long time and download ~500 MB of stuff."
sudo apt-get install git-core ruby kate libxml2-dev libxslt-dev libc6-dev build-essential gcc libgraphicsmagick1-dev libmagickwand-dev libreadline-dev ffmpeg file mysql-client mysql-server mysql-client mysql-server libmysqlclient-dev

echo "Installing Exiftool via CPAN"
sudo perl -MCPAN -e 'install Image::ExifTool'

if [ ! -f /usr/bin/gem ]; then
	echo "Getting and installing RubyGems system"
	cd /tmp
	wget http://production.cf.rubygems.org/rubygems/rubygems-1.8.5.tgz
	tar xfz rubygems-1.8.5.tgz
	cd rubygems-1.8.5
	sudo ruby setup.rb install
	sudo ln -s /usr/bin/gem1.8 /usr/bin/gem
	sudo gem install bundler
fi

echo "-----"

echo "System setup complete. See the various ZHdK projects' GitHub"
echo "pages to find out how to clone and install them:"
echo ""
echo "http://github.com/psy-q/leihs"
echo "http://github.com/psy-q/madek"
echo ""
echo "You can use 'kate' or 'gedit' to edit source code. You can"
echo "also try downloading and installing Aptana Studio if that's"
echo "more your thing."
echo ""
echo "Have fun!"
