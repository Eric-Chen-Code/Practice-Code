#include <assert.h>
#include "banknotes.h"

// SEASHELL_READONLY

// a simple assertion-based test client for banknotes

// this is not an exhaustive test of banknotes,
// but is provided to illustrate how you can test your code

// you should ensure that:
// if the module is correct, no assertions will fail
// if the module is incorrect, at least one assertion will fail

// you do not have to worry about formally testing your print functions
// they are there to aid your debugging
// a simple visual check is sufficient

int main(void) {
  struct banknotes rich = {999, 0, 0, 0, 0};
  struct banknotes invalid = {-1, -1, -1, -1, -1};
  
  assert(banknotes_valid(rich));
  assert(!banknotes_valid(invalid));
  assert(banknotes_to_dollars(rich) == 99900);
  banknotes_print(rich);
}
