#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "oatpp::oatpp" for configuration "Release"
set_property(TARGET oatpp::oatpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(oatpp::oatpp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/oatpp-1.3.0/liboatpp.so"
  IMPORTED_SONAME_RELEASE "liboatpp.so"
  )

list(APPEND _cmake_import_check_targets oatpp::oatpp )
list(APPEND _cmake_import_check_files_for_oatpp::oatpp "${_IMPORT_PREFIX}/lib/oatpp-1.3.0/liboatpp.so" )

# Import target "oatpp::oatpp-test" for configuration "Release"
set_property(TARGET oatpp::oatpp-test APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(oatpp::oatpp-test PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/oatpp-1.3.0/liboatpp-test.so"
  IMPORTED_SONAME_RELEASE "liboatpp-test.so"
  )

list(APPEND _cmake_import_check_targets oatpp::oatpp-test )
list(APPEND _cmake_import_check_files_for_oatpp::oatpp-test "${_IMPORT_PREFIX}/lib/oatpp-1.3.0/liboatpp-test.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
