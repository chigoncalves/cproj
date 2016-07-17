if ("${CMAKE_CURRENT_BINARY_DIR}" STREQUAL
    "${CMAKE_CURRENT_SOURCE_DIR}")
  message (FATAL_ERROR [[In source builds are not allowed.
Try running `cmake' . -B<build-dir>]])
endif ()

cmake_minimum_required (VERSION 3.0)
project (%APP_NAME% LANGUAGES C)

list (APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include_directories ("${CMAKE_BINARY_DIR}"
                     "${CMAKE_SOURCE_DIR}/src")

include (Utils)

configure_file ("${CMAKE_SOURCE_DIR}/src/config.h.in"
                "${CMAKE_BINARY_DIR}/config.h"
		@ONLY)

set (SOURCES src/main.c)
add_executable (${PROJECT_NAME} ${SOURCES})
