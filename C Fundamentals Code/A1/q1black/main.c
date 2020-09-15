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

// * None

// Name: Eric Chen
// login ID: e56chen
/////////////////////////////////////////////////////////////////////////////

#include "cs136.h"

// away_div(num, denom) calculates the result of the division (num // denom), but instead of rounding toward zero (the behaviour in C) // it rounds away from zero
// requires: denom != 0
int away_div(int num, int denom) {
  if (num%denom > 0) {
    return (num/denom) + 1;
  }
  else if (num%denom == 0) {
    return(num/denom);
  }
  return 1;
}

// num_pizza(veg, meat, hawaiian, chicken, slices_per) calculates // the minimum number of pizzas needed for a party
// requires: slices_per > 0 veg > 0, meat > 0, hawaiian > 0, 
// chicken > 0
int num_pizza(int veg, int meat, int hawaiian, int chicken, int slices_per) {
  int min_pizza = 0;
  min_pizza += (away_div (veg , slices_per));
    min_pizza += (away_div (meat , slices_per));
    min_pizza += (away_div (hawaiian , slices_per));
    min_pizza += (away_div (chicken , slices_per));
    return min_pizza;
}


int main(void) {
  assert(away_div(1, 1) == 1);
  assert(away_div(1, 2) == 1);
  assert(away_div(2, 1) == 2);
  assert(away_div(3, 2) == 2);
  assert(num_pizza(8, 2, 0, 0, 8) == 2);
  assert(num_pizza (5, 5, 5, 5, 8) == 4);
  assert(num_pizza (5, 5, 5, 5, 4) == 8);
  assert(num_pizza (1, 2, 3, 4, 5) == 4);
  assert(num_pizza (1, 2, 3, 4, 1) == 10);
}

