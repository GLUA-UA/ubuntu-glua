export DEBIAN_FRONTEND=noninteractive

#Update System and install apt-get frontend Aptitude
apt-get -qy update
cat /vagrant/packages.txt | egrep -v "^\s*(#|$)" | xargs apt-get -qy install

#Setup etckeeper
cp /vagrant/etckeeper.conf /etc/etckeeper/etckeeper.conf

