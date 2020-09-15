// see integrity.c for integrity statement

// Implementation file for pri-queue-c module

#include "pri-queue-c.h"
#include "squeue.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>

// NOTE: You must implement PRI-QUEUE-C as:
//       a maxheap, stored in an array (see assignment for details)

// this is a _suggested_ structure, but you may implement it differently

struct pqnode {
  char *str;
  int priority;
  int id;
};

struct pri_queue {
  struct pqnode *nodes;
  int len;
  int maxlen;
  int count;            // total number of nodes added since creation
};


// pri_queue_create(ignore) creates a new priority queue 
//   {{ignore is ignored}}
// effects: allocates memory (client must call pri_queue_destroy)
// time: O(1)
struct pri_queue *pri_queue_create(int ignore) {
  struct pri_queue *pq = malloc(sizeof(struct pri_queue));
  pq->len = 0;
  pq->maxlen = 1;
  pq->count = 0;
  pq->nodes = malloc(pq->maxlen * (sizeof(struct pqnode)));
  return pq;
}

// pri_queue_add(item, priority, pq) adds item to pq with the given
//   priority
// note: makes a 'copy' of item (caller must free when removed)
// effects: modifies pq
//          allocates memory (caller must free when removed)
// time: {{O(log n + m) [amortized]}}
void pri_queue_add(const char *item, int priority, struct pri_queue *pq) {
  struct pqnode new;
  char *string = malloc((strlen(item) + 1) * (sizeof(char)));
  strcpy(string, item);
  new.str = string;
  new.priority = priority;
  new.id = pq->count;

  if (pq->len == 0) {
    pq->nodes[(pq->len)] = new;
  }
  else {
    pq->nodes[(pq->len)] = new;
    int array = pq->len;
    struct pqnode temp = pq->nodes[array];
    struct pqnode next = pq->nodes[array - 1];
    while (array >= 1) {
      if (new.priority > (next.priority)) {
        if (array == 1) {
          pq->nodes[array] = next;
          pq->nodes[array - 1] = temp;
          break;
        }
        pq->nodes[array] = next;
        pq->nodes[array - 1] = temp;
        array -= 1;
        temp = pq->nodes[array];
        next = pq->nodes[array - 1];
      }
      else {
        break;
      }
    }
  }

  pq->count += 1;
  pq->len += 1;
  
  if ((pq->len) == (pq->maxlen)) {
    pq->maxlen *= 2;
    pq->nodes = realloc(pq->nodes, pq->maxlen * (sizeof(struct pqnode)));
  }

}

// pri_queue_remove(pq) removes and returns the item with the highest priority
// note: caller must free the returned string
// requires: pq is not empty
// effects: modifies pq
// time: {{O(log n) [amortized]}}
char *pri_queue_remove(struct pri_queue *pq) {
  assert(pq);
  int array = 0;
  struct pqnode temp = pq->nodes[array];
  temp.str = (pq->nodes[0]).str;
  while (array < (pq->len - 1)) {
    pq->nodes[array] = pq->nodes[array + 1];
    array += 1;
  }
  pq->len -= 1;
  return temp.str;
}

// pri_queue_max(pq) returns the highest priority in pq
// requires: pq is not empty
// time: O(1)
int pri_queue_max(const struct pri_queue *pq) {
  assert(pq);
  return (pq->nodes[0]).priority;
}

// pri_queue_front(pq) returns a (const) pointer to the item in pq with the
//   highest priority
// requires: pq is not empty
// time: O(1)
const char *pri_queue_front(const struct pri_queue *pq) {
  assert(pq);
  return (pq->nodes[0]).str;
}

// pri_queue_is_empty(pq) determines if pq is empty
// time: O(1)
bool pri_queue_is_empty(const struct pri_queue *pq) {
  return pq->len == 0;
}

// pri_queue_destroy(pq) frees all memory for pq (including any strings)
// effects: pq is no longer valid
// time: O(n)
void pri_queue_destroy(struct pri_queue *pq) {
  int len = 0;
  while (len < pq->len) {
    free((pq->nodes[len]).str);
    len += 1;
  }
  free(pq->nodes);
  free(pq);
}



