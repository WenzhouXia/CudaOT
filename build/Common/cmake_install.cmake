# Install script for directory: /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../bin/libCommon.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../bin" TYPE STATIC_LIBRARY FILES "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/Common/libCommon.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/eps_handler.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/family.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/ErrorCodes.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/GridTools.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/MultiScaleTools.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/PythonTypes.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/TCostFunctionProvider.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/TCouplingHandler.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/TEpsScaling.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/THierarchicalCostFunctionProvider.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/THierarchicalPartition.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/THierarchyBuilder.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/Tools.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/TVarListHandler.h;/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common/Verbose.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/../include/Common" TYPE FILE FILES
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/eps_handler.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/family.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/ErrorCodes.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/GridTools.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/MultiScaleTools.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/PythonTypes.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/TCostFunctionProvider.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/TCouplingHandler.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/TEpsScaling.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/THierarchicalCostFunctionProvider.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/THierarchicalPartition.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/THierarchyBuilder.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/Tools.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/TVarListHandler.h"
    "/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Common/Verbose.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/Common/Models/cmake_install.cmake")

endif()

