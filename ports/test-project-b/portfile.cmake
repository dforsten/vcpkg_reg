vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO dforsten/test_project_b
    REF 3391ef8491aeaec9976c7b4469d75232ce6f44b1
    SHA512 0
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/license.txt")
