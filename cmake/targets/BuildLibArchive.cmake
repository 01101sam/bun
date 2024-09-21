register_repository(
  NAME
    libarchive
  REPOSITORY
    libarchive/libarchive
  COMMIT
    898dc8319355b7e985f68a9819f182aaed61b53a
)

register_cmake_command(
  TARGET
    libarchive
  TARGETS
    archive_static
  ARGS
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON
    -DBUILD_SHARED_LIBS=OFF
    -DENABLE_INSTALL=OFF
    -DENABLE_TEST=OFF
    -DENABLE_WERROR=OFF
    -DENABLE_BZIP2=OFF
    -DENABLE_CAT=OFF
    -DENABLE_EXPAT=OFF
    -DENABLE_ICONV=OFF
    -DENABLE_LIBB2=OFF
    -DENABLE_LibGCC=OFF
    -DENABLE_LIBXML2=OFF
    -DENABLE_LZ4=OFF
    -DENABLE_LZMA=OFF
    -DENABLE_LZO=OFF
    -DENABLE_MBEDTLS=OFF
    -DENABLE_NETTLE=OFF
    -DENABLE_OPENSSL=OFF
    -DENABLE_PCRE2POSIX=OFF
    -DENABLE_PCREPOSIX=OFF
    -DENABLE_ZSTD=OFF
    -DENABLE_ZLIB=OFF
    -DHAVE_ZLIB_H=ON
  LIB_PATH
    libarchive
  LIBRARIES
    archive
)

# libarchive depends on zlib headers, otherwise it will
# spawn a processes to compress instead of using the library.
register_includes(
  TARGET libarchive
  DESCRIPTION "Include zlib headers for libarchive"
  ${VENDOR_PATH}/zlib
)

# if(TARGET clone-zlib)
#   add_dependencies(libarchive clone-zlib)
# endif()
