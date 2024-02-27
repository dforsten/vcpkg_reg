vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO dforsten/test_project_a
    REF 1b4924080d7367f33a3297959f1bc62d2cdefc71
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/license.txt")
