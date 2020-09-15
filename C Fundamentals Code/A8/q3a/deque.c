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

#include "deque.h"
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
struct llnode {
  int item;
  struct llnode *prev;
  struct llnode *next;
};

struct deque {
  struct llnode *front;
  struct llnode *back;
};
///////////////////////////////////////

// deque_create() returns a pointer to a new (empty) deque
// effects: allocates memory (caller must call deque_destroy)
// time: O(1)
struct deque *deque_create(void) {
  struct deque * deq = malloc(sizeof(struct deque));
  deq->front = NULL;
  deq->back = NULL;
  return deq;
}


// deque_destroy(deq) frees all dynamically allocated memory 
// effects: deq is no longer valid (freed)
// time: O(n)
void deque_destroy(struct deque *deq) {
  while (1) {
    if (deq->front == deq->back) {
      free(deq->front);
      break;
    }
    struct llnode *temp = deq->front;
    deq->front = (deq->front->next);
    free(temp);
  }
}

// deque_is_empty(deq) determines if deq is empty
// time: O(1)
bool deque_is_empty(const struct deque *deq) {
  return ((deq->front == NULL) && (deq->back == NULL));
}

// deque_insert_front(item, deq) inserts item into the front of deq
// effects:  modifies deq
// time: O(1)
void deque_insert_front(int item, struct deque *deq) {
  struct llnode *new = malloc(sizeof(struct llnode));
  new->item = item;
  if ((deq->front == NULL) && (deq->back == NULL)) {
    deq->front = new;
    deq->back = new;
  }
  else if (deq->front == deq->back) {
    new->next = deq->front;
    new->prev = NULL;
    deq->front->prev = new;
  }
  else {
    new->next = deq->front;
    deq->front->prev = new;
  }
  deq->front = new;
}


// deque_front(deq) returns the front of deq
// requires: deq is not empty
// time: O(1)
int deque_front(const struct deque *deq) {
  return (deq->front->item);
}

// deque_remove_front(deq) removes and returns the front of deq
// requires: deq is not empty
// effects: modifies deq
// time: O(1)

int deque_remove_front(struct deque *deq) {
  assert(deq);
  int retval = deq->front->item;
  if (deq->back == deq->front) {
    free(deq->front);
    return retval;
  }
  else {
    struct llnode *new = deq->front->next;
    free(deq->front);
    deq->front = new;
    return retval;
  }
}

// deque_insert_back(item, deq) inserts item into the back of deq
// effects: modifies deq
// time: O(1)
void deque_insert_back(int item, struct deque *deq) {
  struct llnode *new = malloc(sizeof(struct llnode));
  new->item = item;
  if ((deq->front == NULL) && (deq->back == NULL)) {
    deq->back = new;
    deq->front = new;
  }
  else if (deq->front == deq->back) {
    new->prev = deq->front;
    deq->front->next = new;
    deq->back = new;
  }
  else {
    new->prev = deq->back;
    deq->back->next = new;
    deq->back = new;
  }
}

// deque_back(deq) returns the back of deq
// requires: deq is not empty
// time: O(1)
int deque_back(const struct deque *deq) {
  assert(deq);
  return (deq->back->item);
}

// deque_remove_back(deq) removes and returns the back of deq
// requires: deq is not empty
// effects: modifies deq
// time: O(1)
int deque_remove_back(struct deque *deq) {
  int retval = deq->back->item;
  struct llnode *new = deq->back->prev;
  
  if (deq->front == deq->back) {
    free(deq->back);
    deq->front = NULL;
    deq->back = NULL;
    return retval;
  }
  
  else {
  free(deq->back);
  deq->back = new;
  return retval;
}
}
// deque_print(deq) prints out the items in deq
// notes: prints "[empty]\n" if deq is empty
//        prints "[%d]\n" if deq has a single item
//        prints "[%d,%d,...,%d]\n" otherwise 
//               so if the deq from front->back is 8, 6, 7, 5, 3, 0, 9
//               prints "[8,6,7,5,3,0,9]\n"
// effects: produces output
// time: O(n)
void deque_print(const struct deque *deq) {
  if (deque_is_empty(deq)) {
    printf("[empty]\n");
  }
  else if ((deq->back) == deq->front) {
    printf("[%d]\n", deq->front->item);
  }
  else {
    printf("[");
    struct llnode *temp = deq->front;
    while (temp != (deq->back)) {
      printf("%d", temp->item);
      printf(",");
      temp = temp->next;
    }

    printf("%d", deq->back->item);
    printf("]\n");
  }

}


// deque_print_reverse(deq) prints out the items in deq in reverse
// notes: prints "[empty]\n" if deq is empty
//        prints "[%d]\n" if deq has a single item
//        prints "[%d,%d,...,%d]\n" otherwise 
//               so if the deq from front->back is 8, 6, 7, 5, 3, 0, 9
//               prints "[9,0,3,5,7,6,8]\n"
// effects: produces output
// time: O(n)
void deque_print_reverse(const struct deque *deq) {
  if (deque_is_empty(deq)) {
    printf("[empty]\n");
  }
  else if ((deq->front) == (deq->back)) {
    printf("[%d]\n", deq->front->item);
  }
  else {
    printf("[");
    struct llnode *temp = deq->back;

    while (temp != (deq->front)) {
      printf("%d", temp->item);
      printf(",");
      temp = temp->prev;
    }
    
    printf("%d", deq->front->item);
    printf("]\n");
  }
}







