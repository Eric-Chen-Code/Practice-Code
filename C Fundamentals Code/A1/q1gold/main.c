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

// (num_pizza2 (veg, meat, hawaiian, chicken, slices_per)) 
// calculates the minimum number of pizzas needed for a party
// given that half pizzas can be ordered
// requires: slices_per > 0 veg > 0, meat > 0, hawaiian > 0, 
// chicken > 0

int num_pizza2(int veg, int meat, int hawaiian, int chicken, int slices_per) {
  int number_halves = 0;
  int number_wholes = 0;
  int veggie_halves = 0;
  if (veg == 0) {
  number_wholes += 0;
  }
  else if ((veg%slices_per) == 0) {
    number_wholes += (veg/slices_per);
  }
  else if ((veg%slices_per) > (slices_per/2)) {
    number_wholes += (veg/slices_per + 1);
  }
  else if ((veg%slices_per) <= (slices_per/2)) {
    number_wholes += (veg/slices_per);
    veggie_halves += 1;
  }
  if (meat == 0) {
  number_wholes += 0;
  }
  else if ((meat%slices_per) == 0) {
    number_wholes += (meat/slices_per);
  }

  else if ((meat%slices_per) > (slices_per/2)) {
    number_wholes += (meat/slices_per + 1);
  }
  else if ((meat%slices_per) <= (slices_per/2)) {
    number_wholes += (meat/slices_per);
    number_halves += 1;
  }
  if (hawaiian == 0) {
  number_wholes += 0;
  }
  else if ((hawaiian%slices_per) == 0) {
    number_wholes += (hawaiian/slices_per);
  }
  else if ((hawaiian%slices_per) > (slices_per/2)) {
    number_wholes += (hawaiian/slices_per + 1);
  }
  else if ((hawaiian%slices_per) <= (slices_per/2)) {
    number_wholes += (hawaiian/slices_per);
    number_halves += 1;
  }
  if (chicken == 0) {
  number_wholes += 0;
  }
  else if ((chicken%slices_per) == 0) {
    number_wholes += (chicken/slices_per);
  }
  else if ((chicken%slices_per) > (slices_per/2)) {
    number_wholes += (chicken/slices_per + 1);
  }
  else if ((chicken%slices_per) <= (slices_per/2)) {
    number_wholes += (chicken/slices_per);
    number_halves += 1;
  }
  if (number_halves%2 == 0) {
    return (number_wholes + (number_halves/2) + veggie_halves);
  }
  else {
    return (number_wholes + (number_halves/2) + 1 + veggie_halves);
  }
}

// bankers_divs(num, denom) calculates the result of the division // (num / denom), rounds toward the closest whole number or the 
// even number in the event of a tie
// requires: denom != 0

int bankers_div(int num, int denom) {
  if (num%denom < (denom/2)) {
    return num/denom;
  }
  else if (num%denom > (denom/2)) {
    return (num/denom) + 1;
  }
  else {
    if (((num/denom)%2) == 0) {
      return num/denom;
    }
    else {
      return num/denom + 1;
    }
  }
}

// passed_exam_avg(mt, mt_total, fin, fin_total) calculates 
// whether or not you have passed the weighted exam average
// requires: mt_total > 0, mt > 0, fin > 0, fin_total > 0
bool passed_exam_avg(int mt, int mt_total, int fin, int fin_total) {
  if ((((mt/mt_total)*25) + ((fin/fin_total)*50)) >= 50) {
    return true;
  } else {
    return false;
  }
}

int main(void) {
  assert(num_pizza2(8, 4, 4, 0, 8) == 2);
  assert(num_pizza2 (9, 4, 4, 0, 8) == 3);
  assert(num_pizza2 (4, 4, 9, 1, 8) == 4);
  assert(num_pizza2 (8, 8, 8, 8, 6) == 7);
  assert(num_pizza2 (0, 0, 0, 0, 0) == 0);
  
  assert(bankers_div(5, 2) == 2);
  assert(bankers_div(-5, 2) == -2);
  assert(bankers_div(-1, 2) == 0);
  assert(bankers_div(2, 5) == 0);
  assert(bankers_div(-2, -1) == 2);
  assert(bankers_div (2, 1) == 2);

  assert(passed_exam_avg(17, 17, 35, 35));
  assert(passed_exam_avg(20, 10, 50, 20));
  assert(!(passed_exam_avg(10, 20, 10, 20)));
  assert(!(passed_exam_avg(0, 1, 0, 1)));
}

