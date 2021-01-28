#!/bin/bash
read -p "Project Name: " NAME 

echo "~ Creating folder structure"
mkdir $NAME
cd $NAME

cp $PICO_SDK_PATH/external/pico_sdk_import.cmake .

echo "~ Downloading templates"
curl -O https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/project.c $NAME.c

curl -O https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/CMakeLists.txt CMakeLists.txt
sed -i '' "s/project_name/$NAME/g" CMakeLists.txt

curl 