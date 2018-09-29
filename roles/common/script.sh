############################
#     Add GLUA Mirrors     #
############################

text="###### GLUA Ubuntu Main Repos
deb http://glua.ua.pt/pub/ubuntu/ bionic main restricted universe multiverse 
deb-src http://glua.ua.pt/pub/ubuntu/ bionic main restricted universe multiverse 

###### GLUA Ubuntu Update Repos
deb http://glua.ua.pt/pub/ubuntu/ bionic-security main restricted universe multiverse 
deb http://glua.ua.pt/pub/ubuntu/ bionic-updates main restricted universe multiverse 
deb-src http://glua.ua.pt/pub/ubuntu/ bionic-security main restricted universe multiverse 
deb-src http://glua.ua.pt/pub/ubuntu/ bionic-updates main restricted universe multiverse
";

if ! grep -q "glua.ua.pt" /etc/apt/sources.list; then
    echo "$text" > /tmp/temp;
    cat /etc/apt/sources.list >> /tmp/temp;
    mv /tmp/temp /etc/apt/sources.list;
    apt update;
fi

############################
#   Set custom wallpaper   #
############################

cd /usr/share/xfce4/backdrops;
# Já não é preciso, visto que usamos o 'copy' do ansible
# wget http://glua.ua.pt/assets/img/ubuntu-glua-wallpaper.png;
mv xubuntu-bionic.png xubuntu-bionic-backup.png;
mv ubuntu-glua-wallpaper.png xubuntu-bionic.png;

############################
#        Set locale        #
############################

locale-gen pt_PT;
locale-gen pt_PT.UTF-8;
update-locale LANG=pt_PT.UTF-8;

# Finish change of hostname
sed -i 's/ubuntu-bionic/ubuntu-glua/g' /etc/hosts