# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(auro_rear_encoders_CONFIG_INCLUDED)
  return()
endif()
set(auro_rear_encoders_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(auro_rear_encoders_SOURCE_PREFIX /home/rajkumar/auro_repo/BBB_ros/src/auro_rear_encoders)
  set(auro_rear_encoders_DEVEL_PREFIX /home/rajkumar/auro_repo/BBB_ros/devel)
  set(auro_rear_encoders_INSTALL_PREFIX "")
  set(auro_rear_encoders_PREFIX ${auro_rear_encoders_DEVEL_PREFIX})
else()
  set(auro_rear_encoders_SOURCE_PREFIX "")
  set(auro_rear_encoders_DEVEL_PREFIX "")
  set(auro_rear_encoders_INSTALL_PREFIX /home/rajkumar/auro_repo/BBB_ros/install)
  set(auro_rear_encoders_PREFIX ${auro_rear_encoders_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'auro_rear_encoders' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(auro_rear_encoders_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include " STREQUAL " ")
  set(auro_rear_encoders_INCLUDE_DIRS "")
  set(_include_dirs "include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${auro_rear_encoders_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'auro_rear_encoders' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'srinivas <srinivas@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'auro_rear_encoders' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/rajkumar/auro_repo/BBB_ros/install/${idir}'.  Ask the maintainer 'srinivas <srinivas@todo.todo>' to fix it.")
    endif()
    _list_append_unique(auro_rear_encoders_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "rear_enc_serial;eqep")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND auro_rear_encoders_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND auro_rear_encoders_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND auro_rear_encoders_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/rajkumar/auro_repo/BBB_ros/install/lib;/home/rajkumar/auro_repo/sandbox/devel/lib;/opt/ros/indigo/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(auro_rear_encoders_LIBRARY_DIRS ${lib_path})
      list(APPEND auro_rear_encoders_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'auro_rear_encoders'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND auro_rear_encoders_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(auro_rear_encoders_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${auro_rear_encoders_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "roscpp;rospy;std_msgs;roscpp")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 auro_rear_encoders_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${auro_rear_encoders_dep}_FOUND)
      find_package(${auro_rear_encoders_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${auro_rear_encoders_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(auro_rear_encoders_INCLUDE_DIRS ${${auro_rear_encoders_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(auro_rear_encoders_LIBRARIES ${auro_rear_encoders_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${auro_rear_encoders_dep}_LIBRARIES})
  _list_append_deduplicate(auro_rear_encoders_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(auro_rear_encoders_LIBRARIES ${auro_rear_encoders_LIBRARIES})

  _list_append_unique(auro_rear_encoders_LIBRARY_DIRS ${${auro_rear_encoders_dep}_LIBRARY_DIRS})
  list(APPEND auro_rear_encoders_EXPORTED_TARGETS ${${auro_rear_encoders_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${auro_rear_encoders_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
