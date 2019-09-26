#!/bin/sh

sudo apt-get install wget curl make vim zsh python unzip -y
if [ $? -ne 0 ]; then
	echo [-] installation failed, try 'sudo apt-get update'
fi
