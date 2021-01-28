# pi-pico-templates
Starting templates for projects

## Prerequisites
Please make sure you have both `cmake` and `gcc-arm-none-eabi` installed.

### Linux 
`sudo apt install cmake gcc-arm-none-eabi`
 
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

To create a project, either download `create.sh` from this repo, or use the following command
```
curl https://raw.githubusercontent.com/matty0005/pi-pico-templates/main/create.sh | bash
```

