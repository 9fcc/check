include(FindPackageHandleStandardArgs)

find_path(PCREPOSIX_INCLUDE_DIR NAMES pcreposix.h)
find_library(PCREPOSIX_LIBRARY NAMES pcreposix)
find_library(PCRE_LIBRARY NAMES pcre)

message("PCREPOSIX_LIBRARY: ${PCREPOSIX_LIBRARY}")
message("PCRE_LIBRARY: ${PCRE_LIBRARY}")

find_package_handle_standard_args(PCREPOSIX DEFAULT_MSG PCREPOSIX_LIBRARY PCREPOSIX_INCLUDE_DIR)

if(PCREPOSIX_FOUND)
	set(PCREPOSIX_LIBRARIES ${PCREPOSIX_LIBRARY})
	set(PCREPOSIX_INCLUDE_DIRS ${PCREPOSIX_INCLUDE_DIR})
else()
	set(PCREPOSIX_LIBRARIES)
	set(PCREPOSIX_INCLUDE_DIRS)
endif()

mark_as_advanced(PCREPOSIX_INCLUDE_DIRS PCREPOSIX_LIBRARIES)

