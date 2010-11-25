# - Try to find libmagic header and library
#
# Usage of this module as follows:
#
#     find_package(LibMagic)
#
# Variables used by this module, they can change the default behaviour and need
# to be set before calling find_package:
#
#  LibMagic_ROOT_DIR         Set this variable to the root installation of
#                            libmagic if the module has problems finding the
#                            proper installation path.
#
# Variables defined by this module:
#
#  LIBMAGIC_FOUND              System has libmagic and magic.h
#  LibMagic_LIBRARY            The libmagic library
#  LibMagic_INCLUDE_DIR        The location of magic.h

find_path(LibMagic_ROOT_DIR
    NAMES include/magic.h
)

find_library(LibMagic_LIBRARY
    NAMES magic
    HINTS ${LibMagic_ROOT_DIR}/lib
)

find_path(LibMagic_INCLUDE_DIR
    NAMES magic.h
    HINTS ${LibMagic_ROOT_DIR}/include
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LibMagic DEFAULT_MSG
    LibMagic_LIBRARY
    LibMagic_INCLUDE_DIR
)

mark_as_advanced(
    LibMagic_ROOT_DIR
    LibMagic_LIBRARY
    LibMagic_INCLUDE_DIR
)
