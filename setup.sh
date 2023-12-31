#!/usr/bin/env bash

### Setup Conda environment for baseline X-FACTR reproduction ###

# before install, make sure you have git-lfs (otherwise X-FACTR will not install correctly)
apt-get install git-lfs

# first conda environment for baseline reproduction
conda create -n xfactr -y python=3.7 && conda activate xfactr && X-FACTR/setup.sh

pip install -r X-FACTR/requirements.txt

# missing from requirements.txt, but required
pip install protobuf==3.20.*

# the version of torch provided in requirements.txt is outdated and does not work 
# 1.13.1+cu117
pip install --upgrade torch

### Setup conda environment for fine-tuning experiments ###
conda env create -f environment.yml