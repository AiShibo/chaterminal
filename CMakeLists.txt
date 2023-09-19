# Minimum CMake version required
cmake_minimum_required(VERSION 3.22)

# Project name and language
project(chaterminal C)

# Set C standard to use
set(CMAKE_C_STANDARD 11)

add_subdirectory(${CMAKE_SOURCE_DIR}/chaterminal-server)
add_subdirectory(${CMAKE_SOURCE_DIR}/chaterminal-client)


set(EXECUTABLE_OUTPUT_PATH  ${CMAKE_SOURCE_DIR}/bin)

