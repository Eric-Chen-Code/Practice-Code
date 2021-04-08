#include <assert.h>
#include "posn.h"

// A program for testing the posn module

int main(void) {
  struct posn two_two = {2, 2};
  struct posn three_oh = {3, 0};
  assert(compare_x(&two_two, &three_oh) < 0); // 2 < 3
  assert(compare_date(&two_two, &two_two) == 0); // same date

  // (2,2) closer by euclidean
  assert(closer_to_origin(&two_two, &three_oh) < 0);
  // (3,0) closer by taxi
  assert(closer_to_origin_taxi(&two_two, &three_oh) > 0); 
  

  
}
