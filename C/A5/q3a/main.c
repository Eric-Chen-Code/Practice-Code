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


#include "cs136-trace.h"
#include "stack.h"
#include <stdio.h>

int main(void) {

  int i = 0;
  int scan = scanf("%d", &i);
  int count = 0;
  struct stack *stack = stack_create();
  while(1) {
    if (scan == 1) {
      stack_push(i, stack);
      printf("%d\n", stack_top(stack));
      scan = scanf("%d", &i);
      count += 1;
    }
    else if ((scan != 1) && (count > 0)) {
      printf("%d\n", stack_pop(stack));
      count -= 1;
    }
    else if (count == 0) {
    break;
    }
  }
  stack_destroy(stack);
}


