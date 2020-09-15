#include <assert.h>
#include <stdbool.h>
#include "posn_sort.h"

// A Program for testing the posn_sort module

// equal_array(arr1, arr2, len) returns true if
//  arr1 and arr2 contain the same posns in the same order
//  false otherwise.
// requires: arr1 and arr2 are arrays with length len

static bool equal_array(const struct posn arr1[],
			const struct posn arr2[],
			const int len) {
  assert(arr1);
  assert(arr2);
  assert(len > 0);
  for (int i = 0; i < len; ++i) {
    if (arr1[i].x != arr2[i].x ||
	arr1[i].y != arr2[i].y) {
      return false;
    }
  }
  return true;
}

int main(void) {
  struct posn test_array[4] = {{4, 2}, {9, 9}, {0, 0}, {-1, 1}};
  struct posn expected[4] = {{-1, 1}, {0, 0}, {4, 2}, {9, 9}};
  sort_posn(test_array, 4, compare_x);
  assert(equal_array(test_array, expected, 4));
  
}
