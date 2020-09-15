// This is a program to test your memory tracing skills
// NOTE: the functions lack appropriate documentation

#include "cs136.h"

// SEASHELL_READONL_PLACEHOLDER

// Ignore the following line: it allows us to do mutual recursion
// (we learn about this in Section 06)
bool bar(bool);

int counter = 0;
const int target = 12;
const int fun = 71;

int my_sample_function(int a, char c) {
  ++counter;
  const bool local = (a == c);  
  printf("%d: %c\n", a, c);
  // <--- TRACE #0 [when reached for the first time]
  a -= c;
  int val = a * a;
  return val;
}

void my_fun_function(int m, int n, char c) {
  ++counter;
  ++m;
  n++;
  bool b1 = (m == c);
  bool b2 = (m == n);
  // <--- TRACE #1 [when reached for the first time]
  char d = 'd'; 
  return;
}

int count_factors(int n) {
  assert(n > 2);
  ++counter;
  int factor_count = 0;
  for (int i = 2; i < n; ++i) {
    if (n % i == 0) {
      printf("New factor detected!\n");
      // <--- TRACE #2 [when reached for the FOURTH time]
      ++factor_count;
    }
  }
  return factor_count;
}

bool foo(bool bf) {
  ++counter;
  if (bf) {
    return bar(!bf);
  } else {
    // <--- TRACE #3 [when reached for the first time]
    return bf;
  }
}

bool bar(bool bb) {
  ++counter;
  return foo(bb);
}

int main(void) {
  ++counter;
  int msf = my_sample_function(0, '0');
  my_fun_function(fun, 'h', 'H');
  int pfc = count_factors(target);
  bool foobar = foo(true);
}
