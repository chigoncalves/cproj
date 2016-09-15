if ("${CMAKE_CURRENT_BINARY_DIR}" STREQUAL
    "${CMAKE_CURRENT_SOURCE_DIR}")
  message (FATAL_ERROR [[In source builds are not allowed.
Try running `cmake' . -B<build-dir>]])
endif ()

cmake_minimum_required (VERSION 3.0)
cmake_policy (SET CMP0054 NEW)

project (<? APP_NAME ?> LANGUAGES <? LANG ?>)

set (CMAKE_INCLUDE_CURRENT_DIR ON)
list (APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include (Utils)

configure_file ("${CMAKE_SOURCE_DIR}/src/config.<? HEADER ?>.in"
                "${CMAKE_BINARY_DIR}/config.<? HEADER ?>"
		@ONLY)

set (SOURCES src/main.<? SOURCE ?>)

add_subdirectory (t)
add_subdirectory (vendor)

add_executable (${PROJECT_NAME} ${SOURCES})
