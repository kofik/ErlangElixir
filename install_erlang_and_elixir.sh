#!/bin/bash

# This script installs Erlang 18.3 from source and Elixir 1.2
# from precomplized zip. Installation took approximately
# 40 minutes with a crappy computer and crappy internet connetion.
# This script should work (read: was only tested) on Mint
# Rosa 17.3, but honestly should work on most Linux debian distros.

# INSTRUCTIONS:
# Pull this into a directory that will persist. (not tmp)
# $ chmod u+x install_erlangElixir.sh
# $ sudo ./install_erlangElixir.sh
# Logout and Log in. 

# For additional help visit Elixir's IRC channel @ #elixir-lang
# on freenode (everyone is very helpful)

# This script comes with no guarantees with regards to
# security or safety. Use at your own risk.

#Updated by isaakbarra@gmail.com

if [ $(id -u) != "0" ]; then
echo "You must be the superuser to run this script" >&2
exit 1
fi

apt-get update

# Install the build tools (dpkg-dev g++ gcc libc6-dev make)
apt-get -y install build-essential

# automatic configure script builder (debianutils m4 perl)
apt-get -y install autoconf

# Needed for HiPE (native code) support, but already installed by autoconf
# apt-get -y install m4

# Needed for terminal handling (libc-dev libncurses5 libtinfo-dev libtinfo5 ncurses-bin)
apt-get -y install libncurses5-dev

# For building with wxWidgets
apt-get -y install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3

# For building ssl (libssh-4 libssl-dev zlib1g-dev)
apt-get -y install libssh-dev

# ODBC support (libltdl3-dev odbcinst1debian2 unixodbc)
apt-get -y install unixodbc-dev


mkdir erlangElixir
mkdir erlangElixir/erlang
mkdir erlangElixir/elixir-v1.2

cd erlangElixir

cd erlang

if [ -e otp_src_18.3.tar.gz ]; then
echo "Good! 'otp_src_18.3.tar.gz' already exists. Skipping download."
else
wget http://erlang.org/download/otp_src_18.3.tar.gz
fi

#install erlang. This takes 1 minute shy of forever.
tar -xvf otp_src_18.3.tar.gz
cd otp_src_18.3
ERL_TOP=`pwd`
./configure
make
sudo make install
cd .. # exit otp_src_18.3
cd .. # exit erlang dir


#install Elixir precompiled binary.
cd elixir-v1.2
#wget https://github.com/elixir-lang/elixir/archive/master.zip
git clone https://github.com/elixir-lang/elixir.git
cd elixir
make clean
make test
ELIXIR_TOP='pwd'
cd .. # exit elixir dir
cd .. # exit erlangElixir

echo "export PATH=\"\$PATH:$ERL_TOP/bin\"" >> $HOME/.profile
echo "export PATH=\"\$PATH:$ELIXIR_TOP/bin\"" >> $HOME/.profile

. $HOME/.profile

echo "Congratulations. You now have Erlang 18.3 and Elixir 1.2 installed!"
echo "Just Log out and Log back in to reload your ~/.profile file."


exit 0
