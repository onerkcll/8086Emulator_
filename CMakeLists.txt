cmake_minimum_required(VERSION 3.21)
project(8086Emulator_)

set(CMAKE_CXX_STANDARD 14)

add_executable(8086Emulator_ main.cpp instructions/Instructions.cpp instructions/Instructions.h fileIo/fileIo.cpp fileIo/fileIo.h)
