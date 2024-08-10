cmake_minimum_required(VERSION 3.10)

# Project declaration
project(nfd)

# Set output directories for the build types
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/../lib/Debug/x64)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/../lib/Release/x64)

# Set source files
set(SOURCE_FILES
    ../../src/nfd_win.cpp
    ../../src/nfd_common.c
)

# Include directories
include_directories(../../src/include)


# Define the library target
add_library(nfd STATIC ${SOURCE_FILES})
