#!/bin/bash
read -p "Project Name: " NAME 

echo "~ Creating folder structure"
mkdir $NAME
cd $NAME
mkdir build

echo "~ Adding build script"
echo "cd build 
cmake ..
make -j8" > build.sh
chmod +x build.sh

cp $PICO_SDK_PATH/external/pico_sdk_import.cmake .

echo "~ Downloading templates"
curl -sO https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/project.c 
mv project.c $NAME.c

curl -sO https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/CMakeLists.txt

# Set the CMakeLists to use the project name
os=`uname`
if [[ "$os" == 'Darwin' ]]; then
   sed -i '' "s/project_name/$NAME/g" CMakeLists.txt
else 
   sed -i "s/project_name/$NAME/g" CMakeLists.txt
fi

echo "~ Done"
echo "~ run './build.sh' to build"
