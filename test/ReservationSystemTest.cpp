#include <gtest/gtest.h>
#include <iostream>

#include "reservation_system/reservation_system.hpp"

TEST(ReservationSystemTest, test_integration)
{
    ASSERT_EQ(1,1);
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}