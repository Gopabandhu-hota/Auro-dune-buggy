# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vectornav: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ivectornav:/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vectornav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg" NAME_WE)
add_custom_target(_vectornav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vectornav" "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg" NAME_WE)
add_custom_target(_vectornav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vectornav" "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg" NAME_WE)
add_custom_target(_vectornav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vectornav" "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vectornav
)
_generate_msg_cpp(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vectornav
)
_generate_msg_cpp(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vectornav
)

### Generating Services

### Generating Module File
_generate_module_cpp(vectornav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vectornav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vectornav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vectornav_generate_messages vectornav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_cpp _vectornav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_cpp _vectornav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_cpp _vectornav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vectornav_gencpp)
add_dependencies(vectornav_gencpp vectornav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vectornav_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vectornav
)
_generate_msg_lisp(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vectornav
)
_generate_msg_lisp(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vectornav
)

### Generating Services

### Generating Module File
_generate_module_lisp(vectornav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vectornav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vectornav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vectornav_generate_messages vectornav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_lisp _vectornav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_lisp _vectornav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_lisp _vectornav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vectornav_genlisp)
add_dependencies(vectornav_genlisp vectornav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vectornav_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav
)
_generate_msg_py(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav
)
_generate_msg_py(vectornav
  "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav
)

### Generating Services

### Generating Module File
_generate_module_py(vectornav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vectornav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vectornav_generate_messages vectornav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/sensors.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_py _vectornav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/ins.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_py _vectornav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajkumar/auro_repo/BBB_ros/src/vectornav/msg/gps.msg" NAME_WE)
add_dependencies(vectornav_generate_messages_py _vectornav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vectornav_genpy)
add_dependencies(vectornav_genpy vectornav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vectornav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vectornav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vectornav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(vectornav_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(vectornav_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vectornav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vectornav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(vectornav_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(vectornav_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vectornav
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(vectornav_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(vectornav_generate_messages_py geometry_msgs_generate_messages_py)
