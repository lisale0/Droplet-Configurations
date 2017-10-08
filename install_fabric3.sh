#!/usr/bin/env bash
pip3 uninstall Fabric
sudo apt-get install -y libffi-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y python3.4-dev
sudo apt-get install -y libpython3-dev
pip3 install pyparsing
pip3 install appdirs
pip3 install Fabric3
