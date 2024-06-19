# tests/CMakeLists.txt

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_executable(ReservationSystemTest ReservationSystemTest.cpp)

target_link_libraries(ReservationSystemTest
    GTest::gtest_main
    ReservationSystem
)

include(GoogleTest)
gtest_discover_tests(SensorHandlerTest)
