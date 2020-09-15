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

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////

// This program implements functions to order four fields in a structure
// and to see if they are ordered

#include "cs136.h"


/////////////////////////////////////////////////////////////////////////////
// PROVIDED CONSTANTS AND STRUCTURE (DO NOT CHANGE)

const int LOW_TO_HIGH = 1;
const int HIGH_TO_LOW = 2;

struct four_nums {
  int first;
  int second;
  int third;
  int fourth;
};
/////////////////////////////////////////////////////////////////////////////

// Global requirements:
// All functions that take a struct pointer as a parameter
//  require: the pointer must be a valid pointer (i.e., it is not NULL)
// All functions that take a direction parameter
//  require: the direction must be LOW_TO_HIGH or HIGH_TO_LOW


// is_ordered_four(direction, f) checks the fields of the structure f
//   to see if they are ordered in the specified direction.
//   Returns true if they are and false otherwise.

bool is_ordered_four(int direction, const struct four_nums *f) {
  return true; // REMOVE OR CHANGE
}


// test_is_ordered(fp) tests if the function fp correctly implements
//   the function is_ordered_four [see above]
//   Returns true fp passes all tests, and false otherwise
// requires: fp must point to a valid function 

bool test_is_ordered(bool (*fp)(int, const struct four_nums *)) {
  return true; // REMOVE OR CHANGE
}


// NOTE: you may modify this function and/or create your own "broken"
//       functions to test the function test_is_ordered

// is_ordered_four_broken1(direction, f) same as is_ordered_four except
//    it does not work correctly in some cases
//    (i.e., it has one or more bugs)

bool is_ordered_four_broken1(int direction, const struct four_nums *f) {
  // missing assertions
  if (direction == LOW_TO_HIGH) {
    return f->first <= f->fourth;
  } 
  return f->first >= f->fourth;
}



// order_four(direction, f) modifies (orders) the fields of f
//   according to the specified direction
// example: calling this function with the direction LOW_TO_HIGH
//   the values of the fields of f will be modified (re-ordered) so that
//   first <= second <= third <= fourth
// effect: modifies *f

void order_four(int direction, struct four_nums *f) {

}


// test_order(fp) tests if the function fp correctly implements
//   the function order_four [see above]
//   Returns true if fp passes all tests, and false otherwise
// requires: fp must point to a valid function 

bool test_order(void (*fp)(int, struct four_nums *)) {
  return true; // REMOVE OR CHANGE
}


// order_four_broken1(direction, f) same as order_four except
//    it does not work correctly in some cases
//    (i.e., it has one or more bugs)

void order_four_broken1(int direction, struct four_nums *f) {
  // missing assertions
  int tmp = 0;
  if (direction == LOW_TO_HIGH) {
    if (f->first > f->fourth) {
       tmp = f->first;
       f->first = f->fourth;
       f->fourth = tmp;
    } 
  } else { // HIGH_TO_LOW
    if (f->first < f->fourth) {
       tmp = f->first;
       f->first = f->fourth;
       f->fourth = tmp;
    } 
  }
}


// YOU MAY MODIFY THIS TO ADD YOUR OWN TESTS

int main(void) {
  // NOTE THAT THIS PROGRAM WILL NOT RUN CORRECTLY
  // UNTIL ALL PARTS ARE IMPLEMENTED PROPERLY

  // Run tests with a version that works
  assert(test_is_ordered(is_ordered_four));
  // Run test with versions that don't work 
  assert(!test_is_ordered(is_ordered_four_broken1));

  // Run tests with a version that works
  assert(test_order(order_four));
  // Run test with versions that don't work 
  assert(!test_order(order_four_broken1));
}
