// This simple test only tests the code we provided for you in bst.c
// you should modify it to test your new functions and features

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "bst.h"
#include "trace-bst.h"

int main(void) {
  struct bst *t = bst_create_empty();
  bst_insert(50, t);
  bst_insert(20, t);
  bst_insert(80, t);
  bst_insert(10, t);
  bst_insert(40, t);
  bst_insert(70, t);
  bst_insert(90, t);
  bst_insert(0, t);
  bst_insert(30, t);
  bst_insert(60, t);
  trace_bst(t);
  assert(bst_contains(50, t));
  // bst_select(5, t) => 50
  bst_remove(50, t);
  trace_bst(t);
  assert(!bst_contains(50, t));
  // bst_select(5, t) => 60
  bst_destroy(t);
}
