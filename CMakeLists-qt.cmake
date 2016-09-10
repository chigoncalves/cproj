if ("${CMAKE_CURRENT_BINARY_DIR}" STREQUAL
    "${CMAKE_CURRENT_SOURCE_DIR}")
  message (FATAL_ERROR [[In source builds are not allowed.
Try running `cmake' . -B<build-dir>]])
endif ()

cmake_minimum_required (VERSION 3.0)
cmake_policy (SET CMP0054 NEW)

project (<? APP_NAME ?> LANGUAGES <? LANG ?>)

set (CMAKE_AUTOMOC ON)
set (CMAKE_AUTOUIC ON)
set (CMAKE_AUTORCC ON)

list (APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

find_package (Qt5Widgets CONFIG)


include_directories ("${CMAKE_BINARY_DIR}"
                     "${CMAKE_SOURCE_DIR}/src")

link_libraries (${PROJECT_NAME}
  Qt5::Widgets
)

include (Utils)

configure_file ("${CMAKE_SOURCE_DIR}/src/config.<? HEADER ?>.in"
                "${CMAKE_BINARY_DIR}/config.<? HEADER ?>"
		@ONLY)

set (SOURCES src/main.<? SOURCE ?>)
add_executable (${PROJECT_NAME} ${SOURCES})
