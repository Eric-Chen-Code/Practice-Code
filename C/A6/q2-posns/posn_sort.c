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

#include "posn_sort.h"


void sort_posn(struct posn *arr, int len, int (*compare)(const struct posn *, const struct posn *)) {
  sort_posn_range (arr, *(arr + 0), *(arr + len));
  return -1;
}

void sort_posn_range (struct posn *arr, int first, int last) {
  if (last <= first) return;
  int pivot = *(a + first);
  int pos = last;
  for (int i = last; i > first; --i) {
    if (*(a + i) > pivot) {
      swap(&(*(a + pos)), &(*(a + i)));
      --pos;
    }
  }
  swap(&(*(a + first)), &(*(a + pos))); // put pivot in correct place
  quick_sort_range(a, first, pos - 1);
  quick_sort_range(a, pos + 1, last);
}










