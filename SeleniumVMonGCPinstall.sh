#!/usr/bin/env bash

#my installation of Selenium install on GCP VM

git clone https://github.com/seleniumbase/SeleniumBase.git
sudo apt -y purge python-pip
sudo python -m pip uninstall pip
sudo apt -y install python-pip
pip install --upgrade pip
echo "source `which virtualenvwrapper.sh`" > ~/.bashrc
echo "export PATH=\"${HOME}/.local/bin:$PATH\"" >>"${HOME}"/.bashrc
python3 -m pip install setuptools-rust
python3 -m pip install virtualenvwrapper --force-reinstall
export WORKON_HOME=$HOME/.virtualenvs
source `which virtualenvwrapper.sh`
source virtualenv_install.sh
pip install -U seleniumbase
