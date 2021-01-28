#!/bin/bash
echo "~ Cloning SDK from Gihub"
git clone https://github.com/raspberrypi/pico-sdk

echo "~ Moving sdk to home directory"
mv pico-sdk ~/pico-sdk

if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
   SHELLTYPE=~/.zshrc
else
   # assume bash
   SHELLTYPE=~/.bashrc
fi

echo "~ Adding the SDK path to bashrc/zshrc"
echo "export PICO_SDK_PATH=~/pico-sdk" >> $SHELLTYPE
source $SHELLTYPE

echo "~ All done, run './create.sh' to create a project directory"

