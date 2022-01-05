cmake_minimum_required(VERSION 3.4.1)
add_library(
            fileIo
            SHARED
             ../../src/fileIo/fileIo.cpp
            ../../src/fileIo/fileIo.h
)
add_library(
            mainCpu
            SHARED
            ../../src/main_cpu/main_cpu.cpp
            ../../src/main_cpu/main_cpu.h
)