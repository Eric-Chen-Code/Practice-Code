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

#include "cs136.h"

/////////////////////////////////////////////////////////////////////////////
// DO NOT MODIFY THIS STRUCTURE OR THIS CONSTANT

struct complex {
  double re;
  double im;
};

const double CLOSE_TO_ZERO = 0.00000001;

/////////////////////////////////////////////////////////////////////////////


bool equal_within(double a, double b, double error) {
  return true; // temporary result to pass simple tests
}


bool complex_equal(struct complex a, struct complex b, double error) {
  return true; // temporary result to pass simple tests
}


struct complex complex_add(struct complex a, struct complex b) {
  struct complex result = {10.0, 10.0};
  return result; // temporary result to pass simple tests
}




void test_black_questions(void) {
  // simple tests:
  const struct complex z5 = {5.0, 5.0};
  const struct complex z10 = {10.0, 10.0};
  
  assert(equal_within(0.0, 0.0, CLOSE_TO_ZERO));
  assert(complex_equal(z5, z5, CLOSE_TO_ZERO));
  assert(complex_equal(complex_add(z5, z5), z10, CLOSE_TO_ZERO));
  
  // add your own tests below:
}


/******************************************************************************
// DO NOT REMOVE THIS COMMENT BLOCK

These two geese are named "Black" and "Gold".
They are here to ensure your black & gold code is sufficiently separated
to avoid any "contamination" if you give/receive help on a black question.



                                       ___
                                   ,-""   `.
                                 ,'  _   e )`-._
                                /  ,' `-._<.===-'
                               /  /
                              /  ;
                  _          /   ;
     (`._    _.-"" ""--..__,'    |
     <_  `-""                     \
      <`-                          :
       (__   <__.                  ;
         `-.   '-.__.      _.'    /
            \      `-.__,-'    _,'
             `._    ,    /__,-'
                ""._\__,'< <____
                     | |  `----.`.
                     | |        \ `.
                     ; |___      \-``
                     \   --<
                      `.`.<
                 hjw    `-'


    
    

                                                            _...--.
                                            _____......----'     .'
                                      _..-''                   .'
                                    .'                       ./
                            _.--._.'                       .' |
                         .-'                           .-.'  /
                       .'   _.-.                     .  \   '
                     .'  .'   .'    _    .-.        / `./  :
                   .'  .'   .'  .--' `.  |  \  |`. |     .'
                _.'  .'   .' `.'       `-'   \ / |.'   .'
             _.'  .-'   .'     `-.            `      .'
           .'   .'    .'          `-.._ _ _ _ .-.    :
          /    /o _.-'     LGB       .--'   .'   \   |
        .'-.__..-'                  /..    .`    / .'
      .'   . '                       /.'/.'     /  |
     `---'                                   _.'   '
                                           /.'    .'
                                            /.'/.'


    
    
source: https://ascii.co.uk/art/goose    
******************************************************************************/

struct complex complex_mult(struct complex a, struct complex b) {
  struct complex result = {10.0, 10.0};
  return result; // temporary result to pass simple tests
}

struct complex complex_div(struct complex num, struct complex denom) {
  struct complex result = {10.0, 10.0};
  return result; // temporary result to pass simple tests
}

struct complex sqrt_double(double n, double error) {
  struct complex result = {2.0, 0.0};
  return result; // temporary result to pass simple tests
}


void test_gold_questions(void) {
  // simple tests:  
  const struct complex z10 = {10.0, 10.0};
  const struct complex one = {1.0, 0.0};
  const struct complex two = {2.0, 0.0};
  
  assert(complex_equal(complex_mult(z10, one), z10, CLOSE_TO_ZERO));
  assert(complex_equal(complex_div(z10, one), z10, CLOSE_TO_ZERO));
  assert(complex_equal(sqrt_double(4.0, 0.0001), two, 0.1));

  // add your own tests below:
  
}


int main(void) {
  test_black_questions();
  test_gold_questions();
}
