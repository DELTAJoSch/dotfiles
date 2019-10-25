#!/bin/bash

echo ".___                 __         .__  .__  .__                           "
echo "|   | ____   _______/  |______  |  | |  | |__| ____    ____             "
echo "|   |/    \ /  ___/\   __\__  \ |  | |  | |  |/    \  / ___\            "
echo "|   |   |  \\___ \  |  |  / __ \|  |_|  |_|  |   |  \/ /_/  >           "
echo "|___|___|  /____  > |__| (____  /____/____/__|___|  /\___  / /\  /\  /\ "
echo "         \/     \/            \/                  \//_____/  \/  \/  \/ "

sudo mkdir /opt/$USER
sudo mkdir /opt/$USER/scripts

sudo cp -avr scipts/* /opt/$USER/scripts

sudo apt-get install zsh -y
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get install docker -y
sudo groupadd docker
usermod -a -G docker $USER

sudo docker run hello-world

sudo apt-get install vim -y
sudo apt-get install git -y
sudo apt-get install snapd -y

sudo snap install --classic code -y

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo cp -avr files/.zsh_custom ~

sudo cp .gitconfig ~
sudo cp .bashrc ~
sudo cp .bash_logout ~
sudo cp .pam_environment ~
sudo cp .profile ~
sudo cp .shell.pre-oh-my-zsh
sudo cp .zshrc ~

echo "___________.__       .__       .__               .___"
echo "\_   _____/|__| ____ |__| _____|  |__   ____   __| _/"
echo " |    __)  |  |/    \|  |/  ___/  |  \_/ __ \ / __ | "
echo " |     \   |  |   |  \  |\___ \|   Y  \  ___// /_/ | "
echo " \___  /   |__|___|  /__/____  >___|  /\___  >____ | "
echo "     \/            \/        \/     \/     \/     \/ "
echo ".___                 __         .__  .__    ._.      "
echo "|   | ____   _______/  |______  |  | |  |   | |      "
echo "|   |/    \ /  ___/\   __\__  \ |  | |  |   | |      "
echo "|   |   |  \\___ \  |  |  / __ \|  |_|  |__  \|      "
echo "|___|___|  /____  > |__| (____  /____/____/  __      "
echo "         \/     \/            \/             \/      "
