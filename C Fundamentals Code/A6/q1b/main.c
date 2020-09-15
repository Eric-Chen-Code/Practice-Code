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
  int index = 0;
  int i = 0;
  int scan = scanf("%d", &i);
  int a[100];
  while (scan != EOF) {
    a[index] = i;
    scan = scanf("%d", &i);
    index += 1;
  }
  int new_index = 0;

  while (new_index != index) {
    printf("%d\n", a[new_index]);
    new_index += 1;
  }
  new_index -= 1;
  
  while (new_index != -1) {
    printf("%d\n", a[new_index]);
    new_index -= 1;
  }
  int forward_index = 0;
    while (forward_index != index) {
    printf("%d\n", a[forward_index]);
    forward_index += 1;
  }

}
