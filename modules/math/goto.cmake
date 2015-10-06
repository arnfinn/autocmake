#.rst:
#
# Find and link to Goto BLAS.
#
# Variables defined::
#
#   GOTO_FOUND
#   GOTO_LIBRARIES
#   GOTO_INCLUDE_DIR
#
# autocmake.cfg configuration::
#
#   docopt: --goto Find and link to GOTO [default: False].
#   define: '-DENABLE_GOTO=%s' % arguments['--goto']

option(ENABLE_GOTO "Find and link to GOTO" OFF)

if(ENABLE_GOTO)
    set(BLA_VENDOR "Goto")
    find_package(BLAS REQUIRED)
    unset(BLA_VENDOR)
endif()