#!/bin/bash
cd /etc/nginx/
sudo git clone https://github.com/shahala-vasyl-13/LoadBalancerWeek2.git
sudo cp LoadBalancerWeek2/testconf.conf sites-available/balancing
sudo rm -r LoadBalancerWeek2
sudo ln -s ../sites-available/balancing sites-enabled/
sudo rm /etc/nginx/sites-enabled/default
