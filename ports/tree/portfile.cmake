vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Ali-Hassan2/tree-library
    REF v1.0.0
    SHA512 <actual_sha512_of_the_source_zip>
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/tree.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include")
message(STATUS "=====================================================")
message(STATUS "✅ Tree Library successfully installed! 🚀")
message(STATUS "📌 Created by: Ali Hassan & Noman Azam")
message(STATUS "📍 GitHub: https://github.com/Ali-Hassan2")
message(STATUS "=====================================================")
