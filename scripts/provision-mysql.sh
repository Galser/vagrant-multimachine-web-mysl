#!/usr/bin/env bash
# MySQL provision script for Ubunt 18.04 Bionic Beaver
# WARNING : NON-SECURE empty ROOT PASSWORD

which mysql || ( 
    export DEBIAN_FRONTEND=noninteractive
    sudo -E apt-get -q -y install mysql-server
)