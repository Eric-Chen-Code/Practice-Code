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

#include "cs136-trace.h"
#include <stdio.h>
#include <string.h>

int main() {
  char first[99];
  char next[99];
  char last[99];
  int scan = scanf("%s", first);
  strcpy(last, first);
  int second_scan = scanf("%s", next);
  if (scan == EOF) {
    printf("NO STRINGS\n");
  }
  else if (second_scan == EOF) {
    printf("%s\n", first);
    printf("%s\n", first);
  }
  else {
    while (scan != EOF) {
      if (strcmp(next, first) <= 0) {
        strcpy(first, next);
      }
      else if (strcmp(last, next) <= 0) {
        strcpy(last, next);
      }
      scan = scanf("%s", next);
    }
    printf("%s\n", first);
    printf("%s\n", last);
  }
}

