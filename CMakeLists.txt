# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
set(PROJECT reservation-system)
project(${PROJECT} VERSION 0
                  DESCRIPTION "Reservation System"
                  LANGUAGES C CXX)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
include_directories(${CMAKE_SOURCE_DIR}/include)

option(BUILD_TESTS "Build tests" OFF)

enable_testing()

add_subdirectory(src)

if(BUILD_TESTS)
    add_subdirectory(tests)
endif()