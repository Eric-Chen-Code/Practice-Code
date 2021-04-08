// see integrity.c for integrity statement

// Implementation file for queue-b module

// This version is implemented in a circular array

#include "queue-b.h"

///////////////////////////////////////
// DO NOT MODIFY THIS STRUCTURE
///////////////////////////////////////
struct queue {
  int *data;
  int front;     // the index of the front item
  int len;
  int maxlen;
};
///////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>

// queue_create() crates a new empty queue
// effects: allocates memory (client must call queue_destroy)
// time: O(1)
struct queue *queue_create(void) {
  struct queue *q = malloc(sizeof(struct queue));
  q->front = 0;
  q->len = 0;
  q->maxlen = 1;
  q->data = malloc(sizeof(int) * (q->maxlen));
  return q;
}

// queue_add_back(i, q) adds i to the back of q
// effects: modifies q
// time: O(1) [amortized]
void queue_add_back(int i, struct queue *q) {
  if ((q->len) == q->maxlen) {
    q->maxlen *= 2;
    q->data = realloc(q->data, q->maxlen * (sizeof(int)));
  }

  q->data[(q->front + q->len)%(q->maxlen)] = i;
  q->len += 1;

}

// queue_remove_front(q) removes and returns the item at the front of q
// requires: q is not empty
// effects: modifies q
// time: O(1) [amortized]
int queue_remove_front(struct queue *q)  {
  assert(q);
  int retval = q->data[q->front];
  q->len -= 1;
  q->front = (q->front + 1) % (q->maxlen);
  int len = q->len;
  int array = 0;
  int front = q->front;
  int next_number = 0;
  int cond = 0;
// This while loop only runs when the len is one quarter of maxlen
// due to the if statement, thus it is O(1) amortized
  if ((q->len) == ((q->maxlen)/4)) {
    while (len > 0) {
      if (((front + 1) % (q->maxlen)) == ((array) % q->maxlen)) {
        if (cond == 0) {
          cond += 1;
          q->data[array] = q->data[front];
          next_number = q->data[((front + 1) % (q->maxlen))];
        }
        else {
          q->data[array] = next_number;
          next_number = q->data[((front + 1) % (q->maxlen))];
        }
      }      
      else {
        q->data[array] = q->data[front];
      }
      len -= 1;
      array += 1;
      front = (front + 1)%(q->maxlen);
    }
    q->maxlen /= 2;
    q->data = realloc(q->data, q->maxlen * (sizeof(int)));
  }

  return retval;
}

// queue_front(q) returns the item at the front of q
// requires: q is not empty
// time: O(1)
int queue_front(const struct queue *q)  {
  assert(q->data[q->front]);
  return q->data[q->front];
}

// queue_is_empty(q) determines if q is empty
// time: O(1)
bool queue_is_empty(const struct queue *q) {
  return q->len == 0;
}

// queue_destroy(q) frees all memory for q
// effects: q is no longer valid
// time: O(1)
void queue_destroy(struct queue *q) {
  free(q->data);
  free(q);
}

// queue_print(q) prints the current queue
// notes: prints "[empty]\n" if q is empty
//        prints "[%d]\n" if q has a single item
//        prints "[%d->%d->...->%d]\n" otherwise 
//               so if the queue from front->back is 8, 6, 7, 5, 3, 0, 9
//               prints "[8->6->7->5->3->0->9]\n"
// effects: displays output
// time: O(n)
void queue_print(const struct queue *q) {
  int array = q->front;
  if (queue_is_empty(q)) {
    printf("[empty]\n");
  }
  else if (q->len == 1) {
    printf("[%d]\n", q->data[0]);
  }
  else {
    int len = q->len;
    printf("[");

    while (len > 1) {
      printf("%d", q->data[array]);
      printf("->");
      array += 1;
      len -= 1;
    }

    printf("%d", q->data[array]);
    printf("]\n");
  }

}
