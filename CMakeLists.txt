# Reference: https://doc.qt.io/qt-6/cmake-get-started.html#building-a-c-console-application
cmake_minimum_required(VERSION 3.16)

project(qtdebug VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core)
qt_standard_project_setup()

qt_add_executable(qtdebug
    main.cpp
)

target_link_libraries(qtdebug PRIVATE Qt6::Core)
