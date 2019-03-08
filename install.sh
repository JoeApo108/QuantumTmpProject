#!/bin/bash

os_update_install_prerequisites() {	
	sudo apt-get -y update && sudo apt-get -y upgrade
	sudo apt-get -y install nginx mysql-server
}
