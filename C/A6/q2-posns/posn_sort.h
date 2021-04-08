#include "posn.h"

// A module for sorting arrays of posns


// SEASHELL_READONLY

// sort_posn(arr, len, compare) places the posns in arr into ascending order,
//  using the compare function pointer to determine if a should go below b:
//  if (compare(a,b)) is negative, a goes before b
//  if (compare(a,b)) is positive, a goes after b
//  otherwise, a and b are equal and can be placed in either order
// requires: arr is an array with length len
//           compare is not NULL
// effects: arr is rearranged
// time: O(n^2) [assuming compare is O(1)]

void sort_posn(struct posn *arr, int len,
	       int (*compare)(const struct posn *, const struct posn *));
