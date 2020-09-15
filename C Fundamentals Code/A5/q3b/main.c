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
  int read = read_symbol();
  int count = 0;
  struct stack *stack = stack_create();
  while(1) {
    if (read != INVALID_SYMBOL) {
      stack_push(read, stack);
      print_symbol(read);
      printf("\n");
      read = read_symbol();
      count += 1;
    }
    else if ((read == INVALID_SYMBOL) && (count > 0)) {
      print_symbol(stack_pop(stack));
      printf("\n");
      count -= 1;
    }
    else if (count == 0) {
    break;
    }
  }
  stack_destroy(stack);
  
}
