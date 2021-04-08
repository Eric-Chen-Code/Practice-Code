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

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////
#include <stdio.h>
#include <assert.h>
#include "cs136-trace.h"

int main(void) {
  int read = read_symbol();
  int a[255];
  int index = 0;
  while (read != INVALID_SYMBOL) {
    a[index] = read;
    read = read_symbol();
    index += 1;
  }

  int tally[255];
  int new_index = 0;
  while (index != -1) {
    tally[a[new_index] - 1] += 1;
    index -= 1;
    new_index += 1;
  }

  int max_index = 1;
  int max_id = 0;
  while (new_index != -1) {
    if (tally[max_index - 1] >= tally[max_index]) {
      max_id = tally[max_index - 1];
      max_index += 1;
      new_index -= 1;
    }
    else {
      max_id = tally[max_index];
      max_index += 1;
      new_index -= 1;
    }
  }
  print_symbol(max_id + 1);
         

}

