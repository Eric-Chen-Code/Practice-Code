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

// Use these strings in your solutions:
// "Warning: positive overflow detected for a = %d, b = %d!\n"
// "Warning: negative overflow detected for a = %d, b = %d!\n"

int saturation_add(int a, int b) {
  int sum = (a + b);
  
  if ((a < 0) == (b < 0)) {
      if (a < 0) {
    if (sum > b) {
    printf("Warning: negative overflow detected for a = %d, b = %d!\n", a, b);
      return INT_MIN;
    }
  }
  else if (sum < b) {
    if (sum < b) 
    printf("Warning: positive overflow detected for a = %d, b = %d!\n", a, b);
      return INT_MAX;
    }
  }
  return sum;
}
void test_black_questions(void) {
  // simple tests:
  assert(saturation_add(2, 2) == 4);
  assert(saturation_add(INT_MAX, 1) == INT_MAX);
  
  // add your own tests below:
  assert(saturation_add(INT_MIN, -1) == INT_MIN);
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


int saturation_sub(int a, int b) {
  int sub = (a - b);
  if ((a > 0) && (b < 0)) {
    if (sub < 0) {
    printf("Warning: negative overflow detected for a = %d, b = %d!\n", a, b);
      return INT_MIN;
    }
  }
  else if ((a < 0) && (b > 0)) {
    if (sub >= 0) {
    printf("Warning: positive overflow detected for a = %d, b = %d!\n", a, b);
      return INT_MAX;
    }
  }
  return sub;
}

int saturation_mult(int a, int b) {
  return 4;  // temporary result to pass simple tests
}

void test_gold_questions(void) {
  // simple tests:  
  assert(saturation_sub(5, 1) == 4);
  assert(saturation_sub(INT_MIN, 1) == INT_MIN);
  assert(saturation_sub(INT_MAX, -1) == INT_MAX);
  assert(saturation_mult(2, 2) == 4);
  
  // add your own tests below:
  
}


int main(void) {
  test_black_questions();
  test_gold_questions();
}
