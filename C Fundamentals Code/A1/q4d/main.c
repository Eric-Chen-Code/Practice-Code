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
int more_int(int first) {
int more = read_int();
  if (first == 0) {
  return 1;
  }
  else if (more == READ_INT_FAIL) {
  return 1;
  }
  else if (more%first == 0) {
  printf("%d\n", more);
    more_int(first);
  }
  else {
  more_int(first);
  }
  return 1;
}

int main(void) {
  int first = read_int();
  more_int(first);
}
