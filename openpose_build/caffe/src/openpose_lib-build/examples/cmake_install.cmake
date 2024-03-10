# Install script for directory: /home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data"
         RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/examples/cifar10/convert_cifar_data")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data"
         OLD_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PUBLIC:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::system:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::thread:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::filesystem:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PRIVATE:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/optimized:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/debug:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_cifar_data")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification"
         RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/examples/cpp_classification/classification")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification"
         OLD_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PUBLIC:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::system:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::thread:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::filesystem:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PRIVATE:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/optimized:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/debug:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/classification")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data"
         RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/examples/mnist/convert_mnist_data")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data"
         OLD_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PUBLIC:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::system:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::thread:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::filesystem:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PRIVATE:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/optimized:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/debug:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_data")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data"
         RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/examples/siamese/convert_mnist_siamese_data")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data"
         OLD_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PUBLIC:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::system:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::thread:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/Boost::filesystem:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/PRIVATE:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/optimized:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/3rdparty/caffe/debug:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/src/openpose_lib-build/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial:"
         NEW_RPATH "/home/pc/Documents/dress-up-ai/StableVITON/custom_data_preprocessing/openpose/caffe/lib:/usr/lib/x86_64-linux-gnu/libglog.so:/usr/lib/x86_64-linux-gnu/libgflags.so:/usr/lib/x86_64-linux-gnu/libprotobuf.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so:/usr/lib/x86_64-linux-gnu/libcrypto.so:/usr/lib/x86_64-linux-gnu/libcurl.so:/usr/lib/x86_64-linux-gnu/libpthread.a:/usr/lib/x86_64-linux-gnu/libsz.so:/usr/lib/x86_64-linux-gnu/libz.so:/usr/lib/x86_64-linux-gnu/libdl.a:/usr/lib/x86_64-linux-gnu/libm.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so:/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so:/usr/lib/x86_64-linux-gnu/libOpenCL.so:/usr/lib/x86_64-linux-gnu/liblapack.so:/usr/lib/x86_64-linux-gnu/libcblas.so:/usr/lib/x86_64-linux-gnu/libatlas.so:/usr/lib/x86_64-linux-gnu/hdf5/serial")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/convert_mnist_siamese_data")
    endif()
  endif()
endif()

