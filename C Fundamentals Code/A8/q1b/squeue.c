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

struct llnode {
  char *item;
  struct llnode *next;
};

struct squeue {
  struct llnode *front;
  struct llnode *back;
  int len;
};

// squeue_create() crates a new empty squeue
// effects: allocates memory (client must call squeue_destroy)
// time: O(1)
struct squeue *squeue_create(void) {
  struct squeue *sq = malloc(sizeof(struct squeue));
  sq->front = NULL;
  sq->back = NULL;
  sq->len = 0;
  return sq;
}

// squeue_add_back(str, sq) adds str to the back of sq
// note: makes a 'copy' of str (caller must free when removed)
// requires: str is a valid (non-null) string
// effects: modifies sq
// time: O(m)
void squeue_add_back(const char *str, struct squeue *sq) {
  char *string = malloc((strlen(str) + 1) * (sizeof(char)));
  struct llnode *node = malloc(sizeof(struct llnode));
  strcpy(string, str);
  node->item = string;
  node->next = NULL;
  if (sq->front == NULL) {
    sq->front = node;
  } else {
    sq->back->next = node;
  }
  sq->back = node;
  sq->len += 1;
}

// squeue_remove_front(sq) removes and returns the item at the front of sq
// note: caller must free the returned string
// requires: sq is not empty
// effects: modifies sq
// time: O(1)
char *squeue_remove_front(struct squeue *sq) {
  assert(sq->front);
  char *retval = sq->front->item;
  struct llnode *old_front = sq->front;
  sq->front = sq->front->next;
  free(old_front);
  if (sq->front == NULL) {
    sq->back = NULL;
  }
  sq->len -= 1;
  return retval;
}

// squeue_front(sq) returns a (const) pointer the front item in sq
// requires: sq is not empty
// time: O(1)
const char *squeue_front(const struct squeue *sq) {
  assert(sq->front);
  return sq->front->item;
}

// squeue_is_empty(sq) determines if sq is empty
// time: O(1)
bool squeue_is_empty(const struct squeue *sq) {
  return sq->front == NULL;
}

// squeue_destroy(sq) frees all memory for sq (including any strings)
// effects: sq is no longer valid
// time: O(n)
void squeue_destroy(struct squeue *sq) {
  while (!squeue_is_empty(sq)) {
    free (sq->front->item);
    squeue_remove_front(sq);
  }
  free(sq);
}

// squeue_print(sq) prints the current queue
// notes: prints "[empty]\n" if sq is empty
//        prints "[%s]\n" if sq has a single item
//        prints "[%s->%s->...->%s]\n" otherwise 
//               so if the queue from front->back is "dog", "cat", "", "rat"
//               prints "[dog->cat->->rat]\n"
// effects: displays output
// time: O(n + k)
void squeue_print(const struct squeue *sq) {
  struct llnode *temp = sq->front;

  if (squeue_is_empty(sq)) {
    printf("[empty]\n");
  }
  else if ((sq->front != NULL) && (sq->front->next == NULL)) {
    printf("[%s]\n", sq->front->item);
  }
  else {
    int count = 0;
    int length = sq->len;
    printf("[");
    while (length > 1) {
      printf("%s", temp->item);
      printf("->");
      count += 1;
      length -= 1;
      temp = temp->next;
    }
    printf("%s", temp->item);
    printf("]");
    printf("\n");
  }
}
