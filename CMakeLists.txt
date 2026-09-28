cmake_minimum_required(VERSION 3.16)

project(openGLproject LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(openGLproject
    main.cpp
    glad.c
)

target_include_directories(openGLproject PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
)

find_package(OpenGL REQUIRED)
find_package(glfw3 CONFIG REQUIRED)

target_link_libraries(openGLproject PRIVATE
    glfw
    OpenGL::GL
)

if(UNIX AND NOT APPLE)
    target_link_libraries(openGLproject PRIVATE
        dl
        pthread
    )
endif()
