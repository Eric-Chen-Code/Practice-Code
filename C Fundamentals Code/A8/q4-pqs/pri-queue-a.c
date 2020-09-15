// see integrity.c for integrity statement

// Implementation file for pri-queue-a module

#include "pri-queue-a.h"
#include "squeue.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>

// NOTE: You must implement PRI-QUEUE-A as:
//       an array of squeue ADTs

// this is a _suggested_ structure, but you may implement it differently

struct pri_queue {
  struct squeue **aosq;
  int num_levels;
};

// pri_queue_create(levels) creates a new priority queue 
//   {{with a fixed number of priority levels from [0...levels - 1]}}
// requires: {{levels > 0}}
// effects: allocates memory (client must call pri_queue_destroy)
// time: {{O(k)}}
struct pri_queue *pri_queue_create(int levels) {
  struct pri_queue *pq = malloc(sizeof(struct pri_queue));
  pq->aosq = malloc(100 * (sizeof(struct squeue *)));
  int level = 100;
  pq->num_levels = 100;
  while (level > 0) {
    pq->aosq[level - 1] = squeue_create();
    level -= 1;
  }
  return pq;
}

// pri_queue_add(item, priority, pq) adds item to pq with the given
//   priority
// note: makes a 'copy' of item (caller must free when removed)
// requires: {{0 <= priority < levels}}
// effects: modifies pq
//          allocates memory (caller must free when removed)
// time: O(m)
void pri_queue_add(const char *item, int priority, struct pri_queue *pq) {
  assert((0 <= priority) && (priority < pq->num_levels));
  squeue_add_back(item, pq->aosq[priority]);
}

// pri_queue_remove(pq) removes and returns the item with the highest priority
// note: caller must free the returned string
// requires: pq is not empty
// effects: modifies pq
// time: {{O(k)}}
char *pri_queue_remove(struct pri_queue *pq) {
  assert(pq);
  int len = 99;
  while (len >= 0) {
    if (squeue_is_empty(pq->aosq[len])) {
      len -= 1;
    }
    else {
      return squeue_remove_front(pq->aosq[len]);
    }
  }
  return squeue_remove_front(pq->aosq[len]);
}

// pri_queue_max(pq) returns the highest priority in pq
// requires: pq is not empty
// time: {{O(k)}}
int pri_queue_max(const struct pri_queue *pq) {
  assert(pq);
  int len = 99;
  while (len >= 0) {
    if (squeue_is_empty(pq->aosq[len])) {
      len -= 1;
    }
    else {
      return len;
    }
  }
  return len;
}

// pri_queue_front(pq) returns a (const) pointer to the item in pq with the
//   highest priority
// requires: pq is not empty
// time: {{O(k)}}
const char *pri_queue_front(const struct pri_queue *pq) {
  assert(pq);
  int high = pri_queue_max(pq);
  return squeue_front(pq->aosq[high]);
}

// pri_queue_is_empty(pq) determines if pq is empty
// time: {{O(k)}}
bool pri_queue_is_empty(const struct pri_queue *pq) {
  assert(pq);
  int len = 99;
  while (len >= 0) {
    if (squeue_is_empty(pq->aosq[len])) {
      len -= 1;
    }
    else {
      return false;
    }
  }
  return true;
}

// pri_queue_destroy(pq) frees all memory for pq (including any strings)
// effects: pq is no longer valid
// time: {{O(n + k)}}
void pri_queue_destroy(struct pri_queue *pq) {
  int len = 99;
  while (len >= 0) {
    squeue_destroy(pq->aosq[len]);
    len -= 1;
  }
  free(pq->aosq);
  free(pq);
}
