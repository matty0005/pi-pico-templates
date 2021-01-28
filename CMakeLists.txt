#Rename 'project_name' to the name of the project

make_minimum_required(VERSION 3.12)
include(pico_sdk_import.cmake)
project(project_name)
pico_sdk_init()

add_executable(project_name
        file.c
        )

# Pull in our pico_stdlib which pulls in commonly used features
target_link_libraries(project_name pico_stdlib)

# create map/bin/hex file etc.
pico_add_extra_outputs(project_name)

#Enable USB serial 
pico_enable_stdio_usb(blinker 1)
pico_enable_stdio_uart(blinker 0)
