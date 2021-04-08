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

int main(void) {
  int count = 0;
  int sum = 0;
  int min = 2147483647;
  int max = -2147483647;
  int i = read_int();
  while(i != READ_INT_FAIL) {
    count += 1;
    sum += i;
    if (i <= min) {
    min = i;
    }
    else if (i >= max) {
    max = i;
    }
    i = read_int();
  }
  printf("STATISTICS:\n");
  printf("count = %d\n", count);
  printf("sum = %d\n", sum);
  printf("mean = %d\n", (sum/count));
  printf("min = %d\n", min);
  printf("max = %d\n", max);

}
