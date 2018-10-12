#!/bin/bash
sudo apt update >> /var/log/update_script.log && sudo apt upgrade -y >> /var/log/update_script.log
# echo "0 0 * * 1 ~/path_to_script/02.sh" | crontab
