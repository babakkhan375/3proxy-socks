sudo apt-get update && apt-get -y upgrade
sudo apt-get install -y build-essential nano
sudo wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/0.8.11.tar.gz
tar xzf 0.8.11.tar.gz
cd 3proxy-0.8.11
sudo make -f Makefile.Linux
cd src
sudo mkdir /etc/3proxy/
sudo mv 3proxy /etc/3proxy/
cd /etc/3proxy/
sudo wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-socks/aws/3proxy.cfg
sudo chmod 600 /etc/3proxy/3proxy.cfg
sudo wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-socks/aws/.proxyauth
sudo chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
sudo wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-socks/aws/3proxyinit
sudo chmod  +x /etc/init.d/3proxyinit
sudo update-rc.d 3proxyinit defaults
