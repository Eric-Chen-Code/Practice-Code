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

// Name: Eric
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
struct queue {
  struct deque *d;
};

// queue_create() create a new empty queue
// effects: allocates memory (caller must call queue_destroy)
// time: O(1)
struct queue *queue_create(void) {
  struct queue *q = malloc(sizeof(struct queue));
  q->d = deque_create();
  return q;
}

// queue_destroy(q) destroys q and frees all memory
// effects: q is no longer valid
// time: O(n)
void queue_destroy(struct queue *q) {
  deque_destroy(q->d);
  free(q);
}

// queue_is_empty(q) determines if q is empty
// time: O(1)
bool queue_is_empty(const struct queue *q) {
  return deque_is_empty(q->d);
}

// queue_add_back(item, q) adds item to the back of q
// effects: modifies q
// time: O(1)
void queue_add_back(int item, struct queue *q) {
  deque_insert_back(item, q->d);
}

// queue_front(q) returns the item at the front of q
// requires: q is not empty
// time: O(1)
int queue_front(const struct queue *q) {
  return deque_front(q->d);
}


// queue_remove_front(q) removes and returns the front of q
// requires: q is not empty
// effects: modifies q
// time: O(1)
int queue_remove_front(struct queue *q) {
  return deque_remove_front(q->d);
}
