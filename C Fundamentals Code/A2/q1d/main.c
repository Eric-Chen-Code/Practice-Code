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

int main(void) {
  int two = 0;
  int one = 0;
  int zero = 0;
  int i = read_int();
  while (i != READ_INT_FAIL) {
  if (i == 2) {
    two += 1;
  }
    else if (i == 1) {
    one += 1;
    }
    else if (i == 0) {
    zero += 1;
    }
    i = read_int();
  }
  
  int og_questions = ((75 * (two + one + zero))/100);
  int questions = ((75 * (two + one + zero))/100);
  if (two >= questions) {
  printf("%d\n", 100);
  }
  else {
  questions -= two;
    if (one >= questions) {
      printf("%d\n", (((two * 100) + (questions * 50))/ og_questions));
    }
    else if (one < questions) {
    printf("%d\n", (((two * 100) + (one * 50))/og_questions));
    }
  }

  
}
