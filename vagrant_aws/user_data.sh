#!/bin/bash
  echo "Defaults:ec2-user !requiretty" > /etc/sudoers.d/999-vagrant-cloud-initrequiretty
  chmod 440 /etc/sudoers.d/999-vagrant-cloud-init-requiretty