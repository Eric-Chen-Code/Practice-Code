// see integrity.c for integrity statement

// Implementation file for pri-queue-b module

#include "pri-queue-b.h"
#include "squeue.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>

// NOTE: You must implement PRI-QUEUE-B as:
//       a single linked list

// this is a _suggested_ structure, but you may implement it differently

struct pqnode {
  char *item;
  int priority;
  struct pqnode *next;
};

struct pri_queue {
  struct pqnode *front;
  int len;
};

// pri_queue_create(ignore) creates a new priority queue 
//   {{ignore is ignored}}
// effects: allocates memory (client must call pri_queue_destroy)
// time: O(1)
struct pri_queue *pri_queue_create(int ignore) {
  struct pri_queue *pq = malloc(sizeof(struct pri_queue));
  pq->front = NULL;
  pq->len = 0;
  return pq;
}

// pri_queue_add(item, priority, pq) adds item to pq with the given
//   priority
// note: makes a 'copy' of item (caller must free when removed)
// effects: modifies pq
//          allocates memory (caller must free when removed)
// time: {{O(n + m)}}
void pri_queue_add(const char *item, int priority, struct pri_queue *pq) {
  struct pqnode *new = malloc(sizeof(struct pqnode));
  char *string = malloc((strlen(item) + 1) * (sizeof(char)));
  strcpy(string, item);
  new->item = string;
  new->priority = priority;

  if (pq->front == NULL) {
    pq->front = new;
    pq->front->next = NULL;
    pq->len += 1;
  }
  else if (pq->len == 1) {
    if (priority > pq->front->priority) {
      new->next = pq->front;
      pq->front = new;
      pq->len += 1;
    }
    else if (priority <= pq->front->priority) {
      pq->front->next = new;
      new->next = NULL;
      pq->len += 1;
    }
  }
  else if (pq->front->priority < priority) {
    new->next = pq->front;
    pq->front = new;
    pq->len += 1;
  }
  else {
    struct pqnode *temp = pq->front;
    struct pqnode *previous_temp = NULL;
    while (1) {
      if (temp == NULL) {
        previous_temp->next = new;
        pq->len += 1;
        break;
      }  
      else if (temp->priority >= new->priority) {
        previous_temp = temp;
        temp = temp->next; 
      }
      else {
        new->next = temp;
        previous_temp->next = new;
        pq->len += 1;
        break;
      }
    }
  }
}

// pri_queue_remove(pq) removes and returns the item with the highest priority
// note: caller must free the returned string
// requires: pq is not empty
// effects: modifies pq
// time: O(1)
char *pri_queue_remove(struct pri_queue *pq) {
  assert(pq);
  struct pqnode *temp = (pq->front);
  char *retval = pq->front->item;
  pq->front = pq->front->next;
  pq->len -= 1;
  free(temp);
  return retval;
}

// pri_queue_max(pq) returns the highest priority in pq
// requires: pq is not empty
// time: O(1)
int pri_queue_max(const struct pri_queue *pq) {
  assert(pq);
  return (pq->front->priority); 
}

// pri_queue_front(pq) returns a (const) pointer to the item in pq with the
//   highest priority
// requires: pq is not empty
// time: O(1)
const char *pri_queue_front(const struct pri_queue *pq) {
  assert(pq);
  const char* point = pq->front->item;
  return point;
}

// pri_queue_is_empty(pq) determines if pq is empty
// time: O(1)
bool pri_queue_is_empty(const struct pri_queue *pq) {
  return (pq->front == NULL);
}

// pri_queue_destroy(pq) frees all memory for pq (including any strings)
// effects: pq is no longer valid
// time: O(n)
void pri_queue_destroy(struct pri_queue *pq) {
  struct pqnode *previous_temp = NULL;
  struct pqnode *temp = pq->front;
  int len = pq->len;
  while (len > 0) {
    previous_temp = temp;
    temp = temp->next;
    free(previous_temp->item);
    free(previous_temp);
    len -= 1;
  }
  free(pq);
}

