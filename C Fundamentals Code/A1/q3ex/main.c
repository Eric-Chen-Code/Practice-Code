#include "cs136.h"
#include "example-io.h"

/*****************************************************************************/

// This EXAMPLE shows how you can use a global variable to track a value
// and uses I/O to test the functions

int value = 0;

void plus(int n) {
  value += n;
  printf("value: %d\n", value);
}

void minus(int n) {
  value -= n;
  printf("value: %d\n", value);
}

/*****************************************************************************/

int main(void) {
  example_io();
}
