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
char to_uppercase(char c) {
  if (c >= 'Z') {
    return c - 'a' + 'A';
  } else {
    return c;
  }
}
int main(void) {
   while (1) {
    char c = read_char(false);
    if (c == READ_CHAR_FAIL) {
      break;
    }
    printf("%c", to_uppercase(c));
  }
}
