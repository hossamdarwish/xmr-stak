sudo apt-get update && sudo apt-get -y upgrade
sudo apt install -y libmicrohttpd-dev  libhwloc-dev  libssl-dev build-essential git cmake
git clone https://github.com/hossamdarwish/xmr-stak
cd xmr-stak

sudo echo -e "\n* soft memlock 262144 \n* hard memlock 262144 \n" >>  /etc/security/limits.conf
sudo echo -e "\nvm.nr_hugepages=128\n" >>  /etc/sysctl.conf
sudo sysctl -p
cmake ./ -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make 
make install
echo "Log off from all user ttys"

echo "after that run sudo ~/xmr-stak/bin/xmr-stak --noNVIDIA --noAMD"
