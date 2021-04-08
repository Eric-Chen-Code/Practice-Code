#include "arrayfun_improved.h"
#include <assert.h>


int main(void) {
  int a[6] = {1, 2, 1, 1, 2, 4};
  assert(!k_in_row(a, 6, 3));
  assert(max_diff(a, 6) == 3);
  assert(max_freq(a, 6) == 1);

}
