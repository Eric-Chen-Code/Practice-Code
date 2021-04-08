/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// None

// Name: Eric Chen
// login ID: e56chen
/////////////////////////////////////////////////////////////////////////////

// This program reads commands which specify the name of
// a function and applies that function to the integers that follow.

#include "cs136.h"


// read_and_apply(fp): applies the specified function to 
//   integers read from input
// effects:  reads input
//           produces output
// requires: fp points at a valid function


// x_plus_ten(x) adds ten to x

int x_plus_ten(int x) {
  return (x + 10);
}

// negate_x(x) negates x

int negate_x(int x) {
  return (-x);
}

// x_squared(x) returns x^2

int x_squared(int x) {
  return (x*x); // REMOVE CHANGE THIS
}

// x_cubed(x) returns x^3

int x_cubed(int x) {
  return (x*x*x); // REMOVE CHANGE THIS
}

// two_to_power_x(x) returns 2^x
// requires: x >= 0

int two_to_power_x(int x) {
  int count = (x-1);
  int result = 2;
  while (count > 0) {
    result *= 2;
  }
  return result;
}
// io_test() continuously reads commands (function names)
//   prints the command, and then applies the function
//   to integers read from input
// effects:  reads input
//           produces output

void read_and_apply(int (*fp)(int)) {
  int (*plus)(int) = x_plus_ten;
  int (*neg)(int) = negate_x;
  int (*squared)(int) = x_squared;
  int (*cubed)(int) = x_cubed;
  int (*two)(int) = two_to_power_x;
  int i = 0;
  while (scanf("%d", &i) == 1) {
    if (fp == plus) {
      printf("%d -> %d\n", i, x_plus_ten(i));
    }
    else if (fp == neg) {
      printf("%d -> %d\n", i, negate_x(i));
    }
    else if (fp == squared) {
      printf("%d -> %d\n", i, x_squared(i));
    }
    else if (fp == cubed) {
      printf("%d -> %d\n", i, x_cubed(i));
    }
    else if (fp == two) {
      printf("%d -> %d\n", i, two_to_power_x(i));
    }
  }
  printf("\n");
  // String to use to print integer read and result of applying function
  // "%d -> %d\n"

}

void io_test(void) {
  int PLUS = lookup_symbol("x_plus_ten");
  int NEGATE = lookup_symbol("negate_x");
  int SQUARED = lookup_symbol("x_squared");
  int CUBED = lookup_symbol("x_cubed");
  int POWER = lookup_symbol("two_to_power_x");
  int QUIT = lookup_symbol("quit");

  int (*plus)(int) = x_plus_ten;
  int (*neg)(int) = negate_x;
  int (*squared)(int) = x_squared;
  int (*cubed)(int) = x_cubed;
  int (*two)(int) = two_to_power_x;

  while (1) {
    int cmd = read_symbol();
    if (cmd == PLUS) {
      printf("x_plus_ten\n");
      read_and_apply(plus);

    }
    else if (cmd == NEGATE) {
      printf("negate_x\n");
      read_and_apply(neg);
    }
    else if (cmd == SQUARED) {
      printf("x_squared\n");
      read_and_apply(squared);
    }
    else if (cmd == CUBED) {
      printf("x_cubed\n");
      read_and_apply(cubed);
    }
    else if (cmd == POWER) {
      printf("two_to_power_x\n");
      read_and_apply(two);
    }
    else if (cmd == QUIT) {
      printf("quit\n");
      break;
    }
  }

  // READ A SYMBOL TO DETERMINE THE FUNCTION TO CALL
  // AND THEN CALL THAT FUNCTION

}



// DO NOT CHANGE THIS FUNCTION
int main(void) {
  io_test();
}

