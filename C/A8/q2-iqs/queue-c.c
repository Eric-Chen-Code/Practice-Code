// see integrity.c for integrity statement

// Implementation file for queue-c module

// This version is implemented with two stacks

#include "stack.h"
#include "queue-c.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>

///////////////////////////////////////
// DO NOT MODIFY THIS STRUCTURE
///////////////////////////////////////
struct queue {
  struct stack *a;
  struct stack *b;
};
///////////////////////////////////////

// queue_create() crates a new empty queue
// effects: allocates memory (client must call queue_destroy)
// time: O(1)
struct queue *queue_create(void) {
  struct queue *q = malloc(sizeof(struct queue));
  q->a = stack_create();
  q->b = stack_create();
  return q;
}

// queue_add_back(i, q) adds i to the back of q
// effects: modifies q
// time: O(1) [amortized]
void queue_add_back(int i, struct queue *q) {
  stack_push(i, q->a);
}

// queue_remove_front(q) removes and returns the item at the front of q
// requires: q is not empty
// effects: modifies q
// time: O(1) [amortized]
int queue_remove_front(struct queue *q) {
  assert(q->a);
  while (!(stack_is_empty(q->a))) {
    stack_push((stack_pop(q->a)), q->b);
  }

  int retval = (stack_pop(q->b));

  while (!(stack_is_empty(q->b))) {
    stack_push((stack_pop(q->b)), q->a);
  }
  return retval;
}

// queue_front(q) returns the item at the front of q
// requires: q is not empty
// effects: {{may modify internal structure of q [not const]}}
// time: {{O(1) [amortized]}}
int queue_front(struct queue *q) {
  while (!(stack_is_empty(q->a))) {
    stack_push((stack_pop(q->a)), q->b);
  }
  int retval = (stack_top(q->b));
  while (!(stack_is_empty(q->b))) {
    stack_push((stack_pop(q->b)), q->a);
  }
  return retval;
}

// queue_is_empty(q) determines if q is empty
// time: O(1)
bool queue_is_empty(const struct queue *q) {
  return (stack_is_empty(q->a) && stack_is_empty(q->b));
}

// queue_destroy(q) frees all memory for q
// effects: q is no longer valid
// time: O(1)
void queue_destroy(struct queue *q) {
  stack_destroy(q->a);
  stack_destroy(q->b);
  free(q);
}

// queue_print(q) prints the current queue
// notes: prints "[empty]\n" if q is empty
//        prints "[%d]\n" if q has a single item
//        prints "[%d->%d->...->%d]\n" otherwise 
//               so if the queue from front->back is 8, 6, 7, 5, 3, 0, 9
//               prints "[8->6->7->5->3->0->9]\n"
// effects: displays output
//          {{may modify internal structure of q [not const]}}
// time: O(n)
void queue_print(struct queue *q) {
  if (queue_is_empty(q)) {
    printf("[empty]\n");
  }
  else {
    stack_push(stack_pop(q->a), q->b);
    if (stack_is_empty(q->a)) {
      printf("[%d]\n", (stack_top(q->b)));
      stack_push(stack_pop(q->b), q->a);
    }
    else {

      printf("[");
      while (!(stack_is_empty(q->a))) {
        stack_push(stack_pop(q->a), q->b);
      }

      while (!(stack_is_empty(q->b))) {
        stack_push(stack_pop(q->b), q->a);
        printf("%d", (stack_top(q->a)));
        if (!(stack_is_empty(q->b))) {
        printf("->");
        }
      }
      printf("]\n");
    }
  }
}

