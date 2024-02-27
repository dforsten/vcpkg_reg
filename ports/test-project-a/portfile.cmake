vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO dforsten/test_project_a
    REF 1b4924080d7367f33a3297959f1bc62d2cdefc71
    SHA512 c6142f4cc099c053e461bb550e1483ce38ce374f29ec3b93210edd6feec730a776c5162e0b686942958185e0650dd796e0447d5ba8ec761b95eb98c519dd9028
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/license.txt")
