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
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>
#include "deque.h"

struct stack {
  struct deque *d;
};

// stack_create() create a new empty stack
// effects: allocates memory (caller must call stack_destroy)
// time: O(1)
struct stack *stack_create(void) {
  struct stack *s = malloc(sizeof(struct stack));
  s->d = deque_create();
  return s;
}

// stack_destroy(s) destroys the stack s and frees all memory
// effects: s is no longer valid
// time: O(n)
void stack_destroy(struct stack *s) {
  deque_destroy(s->d);
  free(s);
}

// stack_is_empty(s) determines if s is empty
// time: O(1)
bool stack_is_empty(const struct stack *s) {
  return deque_is_empty(s->d);
}

// stack_push(item, s) pushes item on to the stack s
// effects: modifies s
// time: O(1)
void stack_push(int item, struct stack *s) {
  deque_insert_front(item, s->d);
}

// stack_top(s) returns the top of the stack s
// requires: s is not empty
// time: O(1)
int stack_top(const struct stack *s) {
  return deque_front(s->d);
}

// stack_pop(s) removes and returns the top of stack s
// requires: s is not empty
// effects: modifies s
// time: O(1)
int stack_pop(struct stack *s) {
  return deque_remove_front(s->d);  
}

