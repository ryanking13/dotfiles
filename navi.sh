#!/bin/bash

INSTALL_DIR=/opt/navi

if [[ "$USER" != "root" ]]; then
	echo "run with sudo"
	exit
fi

if [[ -d ${INSTALL_DIR} ]]; then
	sudo rm -rf ${INSTALL_DIR}
fi

git clone --depth 1 http://github.com/denisidoro/navi ${INSTALL_DIR}
cd ${INSTALL_DIR}
sudo make install
