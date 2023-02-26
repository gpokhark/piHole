#!/bin/sh
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo pihole updatePihole -y
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo apt-get autoclean -y
sudo reboot now