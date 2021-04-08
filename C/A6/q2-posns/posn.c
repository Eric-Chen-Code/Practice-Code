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

#include <assert.h>
#include "posn.h"
// a - b

// see .h
int closer_to_origin(const struct posn *a, const struct posn *b) {
  return ((a->x - b->x) + (a->y - b->y));
}

// see .h
int closer_to_origin_taxi(const struct posn *a, const struct posn *b) {
  return (a->x - b->x);
}

// see .h
int compare_x(const struct posn*a, const struct posn *b) {
  assert(a);
  assert(b);
  if (a->x < b->x) {
    return -1;
  } else if (a->x > b->x) {
    return 1;
  } else {
    return 0;
  }
}

// see .h
int compare_date(const struct posn *a, const struct posn *b) {
  if (compare_x(a, b) > 0) {
    return 1;
  }
  else if (compare_x(a, b) < 0) {
    return -1;
  }
  else if (compare_x(a, b) == 0) {
    if (a->y < b->y) {
    return -1;
    }
    else if (a->y > b->y) {
    return 1;
    }
    else {
    return 0;
    }
  }
}







