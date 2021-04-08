#include <assert.h>
#include <stdlib.h>
#include "set.h"

// a very simple assertion-based test client for the Set ADT module

int main(void) {
  int a[6] = {3, 2, 1, 1, 2, 3};
  struct set s1 = {0};
  set_init(&s1);
  array_to_set(&s1, a, 6);
  assert(set_count(&s1) == 3); // dupes don't count

  assert(set_member(&s1, 1));
  assert(set_member(&s1, 2));
  assert(set_member(&s1, 3));
  assert(!set_member(&s1, 0));
  set_remove(&s1, 2);
  assert(!set_member(&s1, 2));

  struct set s2 = {0};
  set_init(&s2);
  set_add(&s2, 3);
  assert(set_member(&s2, 3));

  struct set s3 = {0};
  set_init(&s3);

  set_union(&s3, &s1, &s2); // s3 = s1 U s2
  assert(set_member(&s3, 1));
  assert(set_member(&s3, 3));

  // ASCII doesn't have an intersection character :(
  set_intersect(&s3, &s1, &s2); // s3 = s1 I s2
  assert(!set_member(&s3, 1));   
  assert(!set_member(&s3, 2));
  assert(set_member(&s3, 3));
  
  // Note that set_print isn't tested as that's IO!  
  
}
