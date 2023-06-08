include(${CMAKE_CURRENT_LIST_DIR}/ecbuild_parse_version.cmake)
ecbuild_parse_version_file(${CMAKE_CURRENT_LIST_DIR}/VERSION PREFIX PACKAGE)

if(PACKAGE_VERSION VERSION_LESS PACKAGE_FIND_VERSION)
  set(PACKAGE_VERSION_COMPATIBLE FALSE)
else()
  set(PACKAGE_VERSION_COMPATIBLE TRUE)
  if(PACKAGE_FIND_VERSION STREQUAL PACKAGE_VERSION)
    set(PACKAGE_VERSION_EXACT TRUE)
  endif()
endif()
