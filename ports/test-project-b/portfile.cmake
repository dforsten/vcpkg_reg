vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO dforsten/test_project_b
    REF 3391ef8491aeaec9976c7b4469d75232ce6f44b1
    SHA512 656af8b7bbce441ae2e8abc199291a0dd4d91cb8b09e2f3750ec443977c6f90cd2d65886b3950228cc77bee849979bae723f6cc8b99a13f26caf5f2cf072a0cd
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/license.txt")
