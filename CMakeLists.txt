cmake_minimum_required(VERSION 3.29)
project(markovChains)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

add_executable(${PROJECT_NAME}
  main.cpp
  markovChain/markovChain.cpp
)
