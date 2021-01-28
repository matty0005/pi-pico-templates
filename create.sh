#!/bin/bash
read -p "Project Name: " NAME 

echo "~ Creating folder structure"
mkdir $NAME
cd $NAME

cp $PICO_SDK_PATH/external/pico_sdk_import.cmake .

echo "~ Downloading templates"
curl -sO https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/project.c 
mv project.c $NAME.c

curl -sO https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/CMakeLists.txt
sed -i '' "s/project_name/$NAME/g" CMakeLists.txt

echo "~ Done"