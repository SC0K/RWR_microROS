# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.6)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.20)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget yaml)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target yaml
add_library(yaml STATIC IMPORTED)

set_target_properties(yaml PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "\$<\$<NOT:\$<BOOL:ON>>:YAML_DECLARE_STATIC>;\$<\$<BOOL:>:_CRT_SECURE_NO_WARNINGS>"
  INTERFACE_INCLUDE_DIRECTORIES "/home/sitong/micro_ros_ws/firmware/mcu_ws/build/libyaml_vendor/libyaml-0.2.5-prefix/src/libyaml-0.2.5/include;/home/sitong/micro_ros_ws/firmware/mcu_ws/build/libyaml_vendor/libyaml-0.2.5-prefix/src/libyaml-0.2.5-build/include"
)

# Import target "yaml" for configuration "Debug"
set_property(TARGET yaml APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(yaml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "/home/sitong/micro_ros_ws/firmware/mcu_ws/build/libyaml_vendor/libyaml-0.2.5-prefix/src/libyaml-0.2.5-build/libyaml.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
