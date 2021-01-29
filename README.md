# pi-pico-templates
Starting templates/boilerplate code for projects using the Raspberry Pi Pico. 

By no means are these scripts complete, but hopefully will reduce the amount of setup required.

## Prerequisites
Please make sure you have both `cmake` and `gcc-arm-none-eabi` installed.

### Linux / WSL (Windows)
```
sudo apt install cmake gcc-arm-none-eabi
```
 
### MacOS
```
brew install cmake
brew tap ArmMbed/homebrew-formulae
brew install arm-none-eabi-gcc
```

# Usage
If you have the pico-sdk installed and have the `PICO_SDK_PATH` set, then you can ignore this first step
```
curl https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/setup.sh | bash
```

To create a project, either download `create.sh` from this repo, or use the following command to download `create.sh`
```
curl https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/download.sh | bash
```

Once downloaded, run `./create.sh` in the current directory, and it will prompt you for a Project name. 


To compile the program, run `./build.sh` in the project directory to build it. It will output all the necessary files as well as the `.uf2` file which you can copy over to the pico directly

