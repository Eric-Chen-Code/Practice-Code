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

/* these strings are for you to cut & paste to help you avoid typos:

    "STATISTICS:\n"
    "count = %d\n"
    "sum = %d\n"
    "mean = %d\n"
    "min = %d\n"
    "max = %d\n"
*/
int counter(int count, int sum, int small, int large) {
  int n = read_int();

  if (n == READ_INT_FAIL) {
    printf("STATISTICS:\n");
    printf("count = %d\n", count);
    printf("sum = %d\n", sum);
    printf("mean = %d\n", (sum/count));
    printf("min = %d\n", small);
    printf("max = %d\n", large);
  }
  else {
    count += 1;
    sum += n;
    if ((small == 0) && (large == 0)) {
    large = n;
    small = n;
    }
    else if (n <= small) {
    small = n;
    }
    else if (n >= large) {
    large = n;
    }
    counter(count, sum, small, large);
  }
  return 1;
}

int main(void) {
  counter(0, 0, 0, 0);
}
