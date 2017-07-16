#!/bin/bash
################################################################################
# install - Install script to help you install zmbackup in your server. You can
#           simply ignore this file and move the files to the correctly place, but
#           the chance for this goes wrong is big. So, this script made everything
#           for you easy.
#
################################################################################
# LOADING INSTALL LIBRARIES
################################################################################
source installScript/check.sh
source installScript/depDownload.sh
source installScript/deploy.sh
source installScript/menu.sh
source installScript/vars.sh

################################################################################
# INSTALL MAIN CODE
################################################################################
contract
check_env
set_values
check_config
if [[ $SO = "ubuntu" ]]; then
  install_ubuntu
else
  install_redhat
fi
if [[ $UPGRADE = "Y" ]];
  deploy_upgrade
else
  deploy_new
fi
