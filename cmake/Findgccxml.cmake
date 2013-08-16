#
# Find the gccxml executable
#
# This module defines
# GCCXML_EXECUTABLE, If false, do not try to use gccxml

find_program(GCCXML_EXECUTABLE
  NAMES gccxml
        ../GCC_XML/gccxml
  PATHS [HKEY_CURRENT_USER\\Software\\Kitware\\GCC_XML;loc]
        "$ENV{ProgramFiles}/GCC_XML"
        "C:/Program Files/GCC_XML"
        "${PROJECT_SOURCE_DIR}/../../gccxml-bin/bin"
)

if (GCCXML_EXECUTABLE)
    message( STATUS "Found gccxml executable: ${GCCXML_EXECUTABLE}")
else()
    message( STATUS "NOT Found gccxml executable: cannot build pygimli.")
endif(GCCXML_EXECUTABLE)

mark_as_advanced(GCCXML)