# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-src")
  file(MAKE_DIRECTORY "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-src")
endif()
file(MAKE_DIRECTORY
  "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-build"
  "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix"
  "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix/tmp"
  "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix/src/etcpal-populate-stamp"
  "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix/src"
  "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix/src/etcpal-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix/src/etcpal-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/luthienfinch/Developer/Node/Lightframes/native/build/_deps/etcpal-subbuild/etcpal-populate-prefix/src/etcpal-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
