#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <vector>
#include <string>
#include <iostream>
#include <algorithm>
#include "doctest.h"
#include "functions.h"


TEST_CASE("Checking the correctness of the writing the first column"){
    short test_x { 1 };
    float test_xBoundariesOfObj[2]{ 0, 0 };
    bool test_ConditionWriteBeginningObj = false;
    f_1(test_x, test_xBoundariesOfObj, test_ConditionWriteBeginningObj);
    CHECK(test_ConditionWriteBeginningObj == true);
}

TEST_CASE("Checking the incorrectness of the writing the fisrt column"){
    short test_x = -1;
    float test_xBoundariesOfObj[2]{ 0, 0 };
    bool test_ConditionWriteBeginningObj = false;
    CHECK_THROWS_WITH(f_1(test_x, test_xBoundariesOfObj,
                          test_ConditionWriteBeginningObj),
                      "Value is negative");
}

TEST_CASE("Checking the reset of the counter of the AnimOfGun"){
    bool test_startCounterOfTimeShoot = false;
    short test_counterOfAnimOfGun = 6;
    f_2(test_counterOfAnimOfGun, test_startCounterOfTimeShoot);
    CHECK(test_counterOfAnimOfGun == 0);
}

TEST_CASE("Checking the warning of the reset of the counter of the AnimOfGun"){
    bool test_startCounterOfTimeShoot = false;
    short test_counterOfAnimOfGun = 7;
    CHECK_THROWS_WITH(f_2(test_counterOfAnimOfGun,
                          test_startCounterOfTimeShoot),
                      "Value of counter shoudent be bigger than six");
}

TEST_CASE("Checking the restarting of the game"){
    bool test_again = false;
    bool test_tomenu = true;
    gamecase_reset(test_again, test_tomenu);
    CHECK(gamecase_reset(test_again, test_tomenu));
}

TEST_CASE("Checking the continuation of the game"){
    bool test_again = true;
    bool test_tomenu = true;
    CHECK_THROWS_WITH(gamecase_reset(test_again, test_tomenu),
                      "You cannot press two buttons at once");
}

TEST_CASE("x position inside the picture"){
    short test_x = 880;
    float test_counterOfHeaven = 5570;
    f_3(test_x, test_counterOfHeaven);
    CHECK(test_counterOfHeaven == 0);
}

TEST_CASE("x position beyond the picture"){
    short test_x = 880;
    float test_counterOfHeaven = 5700;
    CHECK_THROWS_WITH(f_3(test_x, test_counterOfHeaven), "Out of the picture");
}

TEST_CASE("Cheking the correctness of the calculating distance"){
    bool Hit = false;
    float DistanceTo = 0;
    float StepSize = 0.1;
    int TestX = 0;
    int TestY = 0;
    float PlayerX = 3;
    float PlayerY = 3;
    float EyeX = 1;
    float EyeY = 0;
    short MapWidth = 16;
    short MapHeight = 16;
    std::wstring map{};
    map += L"#$#$#$#$$$#$#$##";
    map += L"#.......#.....##";
    map += L"$.......$......$";
    map += L"#..............#";
    map += L"$..............$";
    map += L"#.......#......#";
    map += L"$$.....$$......$";
    map += L"#$#$#$#$##.1...#";
    map += L"#....4.$$#$..#$$";
    map += L"$......#.......#";
    map += L"#......3.......$";
    map += L"$..............#";
    map += L"#......$....2..$";
    map += L"$......#.......#";
    map += L"#......$.......$";
    map += L"#$#$#$#$#$#$#$#$";
    std::string subject = "Wall";
    Distance(subject, Hit, DistanceTo, StepSize, TestX, TestY,
             PlayerX, PlayerY, EyeX, EyeY, MapWidth, MapHeight, map);
    CHECK(Hit);
}
       
TEST_CASE("Cheking the calculating distance of the none-existent object"){
    bool Hit = false;
    float DistanceTo = 0;
    float StepSize = 0.1;
    int TestX = 0;
    int TestY = 0;
    float PlayerX = 3;
    float PlayerY = 3;
    float EyeX = 1;
    float EyeY = 0;
    short MapWidth = 16;
    short MapHeight = 16;
    std::wstring map{};
    map += L"#$#$#$#$$$#$#$##";
    map += L"#.......#.....##";
    map += L"$.......$......$";
    map += L"#..............#";
    map += L"$..............$";
    map += L"#.......#......#";
    map += L"$$.....$$......$";
    map += L"#$#$#$#$##.1...#";
    map += L"#....4.$$#$..#$$";
    map += L"$......#.......#";
    map += L"#......3.......$";
    map += L"$..............#";
    map += L"#......$....2..$";
    map += L"$......#.......#";
    map += L"#......$.......$";
    map += L"#$#$#$#$#$#$#$#$";
    std::string subject = "Empty";
    CHECK_THROWS_WITH(Distance(subject, Hit, DistanceTo, StepSize,
                               TestX, TestY, PlayerX, PlayerY, EyeX, EyeY,
                               MapWidth, MapHeight, map),
                      "Invalid type of subject");
}

TEST_CASE("Checking the correctness reseting values"){
    float xPositionCuttingFromSpriteMonster = 128;
    float Boundaries[2]{ 10, 20};
    bool DrawingMonster = true;
    bool conditionForOnceWritePreviousSymbol = true;
    bool ConditionWriteBeginningObj = true;
    std::wstring previousSymbol = L"#";
    f_4(xPositionCuttingFromSpriteMonster, Boundaries, DrawingMonster, 
        conditionForOnceWritePreviousSymbol, ConditionWriteBeginningObj,
        previousSymbol);
    CHECK(previousSymbol == L"");
}

TEST_CASE("Checking for going beyond the picture"){
    float xPositionCuttingFromSpriteMonster = -10;
    float Boundaries[2]{ 10, 20 };
    bool DrawingMonster = true;
    bool conditionForOnceWritePreviousSymbol = true;
    bool ConditionWriteBeginningObj = true;
    std::wstring previousSymbol = L"#";
    CHECK_THROWS_WITH(f_4(xPositionCuttingFromSpriteMonster, Boundaries,
                          DrawingMonster, conditionForOnceWritePreviousSymbol,
                          ConditionWriteBeginningObj, previousSymbol),
                      "Beyond the picture");
}