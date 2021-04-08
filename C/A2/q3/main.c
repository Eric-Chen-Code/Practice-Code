/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// None

// Name: Eric Chen
// login ID: e56chen
/////////////////////////////////////////////////////////////////////////////

#include "cs136.h"

int count_digits(int n) {
  int count = 0;
  while (n > 0) {
    n /= 10;
    count += 1;
  }
  return count;
}


int digital_root(int n) {
  int sum = 0;
  while (n > 0) {
    sum += (n%10);
    n /= 10;
  }
  return sum;
}


int reverse_digits(int n) {
  int reverse = 0;
  while (n > 0) {
    int remainder = n % 10;
    reverse = reverse * 10 + remainder;
    n /= 10;
  }
  return reverse;
}
int palindrome(int n) {
  int new_number = n;
  while (n > 0) {
    new_number *= 10;
    new_number += (n%10);
    n /= 10;
  }
  return new_number;
}


int collatz_distance(int n, int m) {
  int steps = 0;
  while (n != 1) {
    if (n == m) {
      return steps;
    }
    else {
      if ((n%2) != 0) {
        n = (n * 3) + 1;
        steps += 1;
      }
      else if ((n%2) == 0) {
        n /= 2;
        steps += 1;
      }
    }
  }
  if ((n == m) && (m == 1)) {
  return steps;
  }
  else {
  return -1;
  }
}


int main(void) {
  assert(count_digits(12) == 2);
  assert(digital_root(12) == 3);
  assert(reverse_digits(12) == 21);
  assert(palindrome(12) == 1221);
  assert(collatz_distance(2, 1) == 1);
}
