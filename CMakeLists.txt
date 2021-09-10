cmake_minimum_required(VERSION 3.16)
project(my_project VERSION 0.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -Wall -fconcepts")

# find_package(OpenGL REQUIRED)

file(GLOB_RECURSE HEADERS src/include/*.h)
file(GLOB_RECURSE SOURCES src/src/*.cc)

file(GLOB_RECURSE VENDOR_HEADERS src/vendor/include/*.h)
file(GLOB_RECURSE VENDOR_SOURCES src/vendor/src/*.cc src/vendor/src/*.c)

include_directories(src/vendor/include src/include)

add_executable(main ${VENDOR_HEADERS} ${VENDOR_SOURCES} ${HEADERS} ${SOURCES} src/main.cc)
# target_link_libraries(my_project OpenGL::GL glfw -lX11 -ldl)
