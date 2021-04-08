// This is a very simple test for your stack module
// feel free to modify it or create your own test client

#include <assert.h>
#include "stack.h"

int main(void) {
  struct stack *s = stack_create();
  stack_push(42, s);
  stack_push(50, s);
  stack_push(18, s);
  assert(stack_top(s) == 18);
  assert(stack_top(s) == 18);
  assert(stack_pop(s) == 18);
  assert(stack_pop(s) == 50);
  assert(!(stack_is_empty(s)));
  assert(stack_pop(s) == 42);
  assert(stack_is_empty(s));         
  stack_destroy(s);
}
