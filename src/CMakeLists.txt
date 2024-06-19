

add_library(ReservationSystem reservation_system.cpp)

# Include the additional headers directory
target_include_directories(ReservationSystem PUBLIC ${CMAKE_SOURCE_DIR}/include/reservation_system)

# Add the main application
add_executable(ReservationSystemApp main.cpp)
target_link_libraries(ReservationSystemApp ReservationSystem)
