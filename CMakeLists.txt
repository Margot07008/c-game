
cmake_minimum_required(VERSION 3.9)
set(PROJECT_NAME NFS_Next_Gen)
project(${PROJECT_NAME} CXX)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

# ==== Standard and flags ==== #
set(GCC_COVERAGE_COMPILE_FLAGS "-lboost_system -lboost_thread")
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS  "-lm -Wno-unknown-pragmas  -fprofile-arcs -ftest-coverage -lgcov")
set(CMAKE_EXE_LINKER_FLAGS "-lgcov --coverage")

# ==== Main directories ==== #
set(INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)
set(TEST_DIR ${PROJECT_SOURCE_DIR}/test)
set(LIBRARIES_DIR ${PROJECT_SOURCE_DIR}/libs)

# ==== Need for running main.cpp ==== #
include_directories(${INCLUDE_DIR})
file(GLOB_RECURSE SOURCE_CPPS ${SOURCE_DIR}/*/*.cpp)
add_executable(${PROJECT_NAME} ${SOURCE_CPPS} ${SOURCE_DIR}/main.cpp )

# ==== Linking with cpp math library ==== #
target_link_libraries(${PROJECT_NAME})

# ==== Linking with Boost ==== #
find_package(Boost REQUIRED COMPONENTS system filesystem date_time thread)
include_directories(${Boost_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})


# ==== Linking with Google test ==== #
#enable_testing()

#add_subdirectory(${LIBRARIES_DIR}/googletest)
#add_subdirectory(test)

#include_directories(${LIBRARIES_DIR}/googletest/googletest/include)
#target_link_libraries(${PROJECT_NAME} gtest gtest_main)

#include_directories(${LIBRARIES_DIR}/googletest/googlemock/include)
#target_link_libraries(${PROJECT_NAME} gmock gmock_main)



# ==== Linking with SQLite DataBase ==== #
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake_modules")

find_package(SQLite3)
if (SQLite3_FOUND)
    include_directories(${SQLite3_INCLUDE_DIRS})
    #add_library(SQLite STATIC src/physics/SQLite.cpp)
    target_link_libraries(${PROJECT_NAME}  ${SQLite3_LIBRARIES})
endif (SQLite3_FOUND)

# ==== Linking with SFML ==== #
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake_modules")

find_package(SFML REQUIRED system window graphics network audio)
if (SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(${PROJECT_NAME} ${SFML_LIBRARIES})
endif()
