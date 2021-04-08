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
#include <stdio.h>
#include <assert.h>
#include "cs136-trace.h"
#include "merge_sort.h"

int main(void) {
  int a[26] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,};
  char i = 0;
  int scan = scanf("%c", &i);      
  while (scan != EOF) {
    if ((i <= 90) && (i >= 65)) {
      a[i + 32 - 97] += 1;
      scan = scanf("%c", &i);
    }
    else if ((i >= 97) && (i <= 122)) {
      a[i - 97] += 1;
      scan = scanf("%c", &i);
    }
    else {
    scan = scanf("%c", &i);
    }
  }
  int new_index = 0;
  while (new_index != 27) {
    if (a[new_index] == 0) {
    new_index += 1;
    }
    else {
    printf("%c: %d\n", (new_index + 97), a[new_index]);
    new_index += 1;
    }
}
}
