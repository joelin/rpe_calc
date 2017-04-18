cmake_minimum_required (VERSION 2.8.11)
project(rpe_calc)


add_library(getch getch.c calc.h)
add_library(stack stack.c calc.h)
add_library(getop getop.c calc.h)


add_executable(rpe_calc main.c calc.h)
target_link_libraries(rpe_calc getch getop stack)