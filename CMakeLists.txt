if (${CMAKE_CURRENT_BINARY_DIR} STREQUAL ${CMAKE_CURRENT_SOURCE_DIR})
  message (FATAL_ERROR "In source build are not allowed.")
endif ()

cmake_minimum_required (VERSION 3.0)
project (%APP_NAME% LANGUAGES C)

list (APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include_directories (
  ${CMAKE_BINARY_DIR}/include
  ${CMAKE_SOURCE_DIR}/include
  ${CMAKE_SOURCE_DIR}/src
)

include (Utils)

configure_file ("${CMAKE_SOURCE_DIR}/include/config.h.in" "${CMAKE_BINARY_DIR}/include/config.h")

set (SOURCES src/main.c)
add_executable (${PROJECT_NAME} ${SOURCES})

set (CPACK_GENERATOR "TXZ")
set (CPACK_STRIP_FILES 1)
set (CPACK_PACKAGE_CONTACT "%USER% <%EMAIL%>")
set (CPACK_PACKAGE_DESCRIPTION "A simple project.")
set (CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/readme.rst")
include (CPack)
