#!/bin/sh
#install ansible
apt-get update
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible
#install python
#sudo add-apt-repository ppa:fkrull/deadsnakes
#sudo apt-get update
#sudo apt-get install python2.7
