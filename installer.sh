#!/bin/bash

echo "Copying a link to the Pro Git book to the desktop you, so you know how to use git"

echo "[Desktop Entry]" >> ~/Desktop/pro_git.desktop
echo "Encoding=UTF-8" >> ~/Desktop/pro_git.desktop
echo "Name=Link to Pro Git Book" >> ~/Desktop/pro_git.desktop
echo "Type=Link" >> ~/Desktop/pro_git.desktop
echo "URL=http://progit.org/" >> ~/Desktop/pro_git.desktop
echo "Icon=gnome-fs-bookmark" >> ~/Desktop/pro_git.desktop

echo "Installing base packages"
sudo apt-get install git-core ruby kate libxml2-dev libxslt-dev libc6-dev build-essential gcc

echo "Getting and installing RubyGems system"
cd /tmp
wget http://production.cf.rubygems.org/rubygems/rubygems-1.8.5.tgz
tar xfz rubygems-1.8.5.tgz
cd rubygems-1.8.5
sudo ruby setup.rb install
sudo ln -s /usr/bin/gem1.8 /usr/bin/gem
sudo gem install bundler





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
