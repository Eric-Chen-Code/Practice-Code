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

#include "cs136.h"
int maker(int width, int height, int width_counter) {
if ((height > 0) && (width > 0)) {
  printf("*");
  width -= 1;
  maker(width, height, width_counter);
}
  else if ((width == 0) && (height > 0)) {
  printf("\n");
    height -= 1;
    maker(width_counter, height, width_counter);
  }
  else if (height == 0) {
    return 1;
  }
  return 1;
}

int main(void) {
  int width = read_int();
  int height = read_int();
  maker(width, height, width);
}
