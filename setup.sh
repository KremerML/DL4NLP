#!/usr/bin/env bash

git clone https://github.com/jzbjyb/X-FACTR.git

# before install, make sure you have git-lfs (otherwise X-FACTR will not install correctly)
apt-get install git-lfs

conda create -n xfactr -y python=3.7 && conda activate xfactr && X-FACTR/setup.sh

pip install -r X-FACTR/requirements.txt

# missing from requirements.txt, but required
pip install protobuf==3.20.*

# the version of torch provided in requirements.txt is outdated and does not work 
# 1.13.1+cu117
pip install --upgrade torch