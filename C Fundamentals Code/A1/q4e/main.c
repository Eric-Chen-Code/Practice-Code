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
int reader(int a, int b, int aplus) {
  if (b < a) {
    return 1;
  }
  else if (aplus <= b) {
    printf("%d\n", aplus);
      aplus += 1;
    reader(a, b, aplus);
  }
  return 1;
}
int main(void) {
  int a = read_int();
  int b = read_int();
  reader(a, b, a);
}
