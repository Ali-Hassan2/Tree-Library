vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Ali-Hassan2/TreeLibrary
    REF main
    SHA512 0
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/include/tree.hpp" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

message(STATUS "=====================================================")
message(STATUS "✅ Tree Library successfully installed! 🚀")
message(STATUS "📌 Created by: Ali Hassan & Noman Azam")
message(STATUS "📍 GitHub: https://github.com/Ali-Hassan2")
message(STATUS "=====================================================")
