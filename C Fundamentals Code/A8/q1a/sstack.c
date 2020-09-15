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

struct sstack {
  char **data;
  int len;
  int maxlen;
};
// an array character pointers

// sstack_create() creates a new empty string stack [sstack]
// note: calling sstack_status after sstack_create displays "status: 0/1\n"
//       (see sstack_status below)
// effects: allocates memory (client must call sstack_destroy)
// time: O(1)
struct sstack *sstack_create(void){
  struct sstack *ss = malloc(sizeof(struct sstack));
  ss->len = 0;
  ss->maxlen = 1;
  ss->data = malloc(ss->maxlen * sizeof(char*));
  return ss;
}
// stack_destroy(ss) frees all memory for ss (including any strings)
// effects: ss is no longer valid
// time: O(n)
void sstack_destroy(struct sstack *ss){
  int len = ss->len - 1;
  while (len >= 0) {
    free((ss->data[len]));
    len -= 1;
  }
  free(ss->data);
  free(ss);
}
// sstack_is_empty(ss) determines if ss is empty
// time: O(1)
bool sstack_is_empty(const struct sstack *ss){
  assert(ss);
  return ss->len == 0;
}

// sstack_top(ss) returns a (const) pointer the top item in ss
// requires: ss is not empty
// time: O(1)
const char *sstack_top(const struct sstack *ss){
  assert(ss);
  assert(ss->len);
  return ss->data[ss->len - 1];
}

// sstack_pop(ss) returns and pops (removes) the top item in stack ss
// note: caller must free the returned string
// requires: ss is not empty
// effects: modifies ss
// time: O(1) [amortized]
char *sstack_pop(struct sstack *ss){
  assert(ss);
  assert(ss->len);
  ss->len -= 1;
  if ((ss->len) == ((ss->maxlen)/4)) {
    ss->maxlen /= 2;
    ss->data = realloc(ss->data, ss->maxlen * (sizeof(char*)));
  }
  return ss->data[ss->len];
}

// sstack_push(str, ss) pushes str on top of ss
// note: makes a 'copy' of str (caller must free when popped)
// requires: str is a valid (non-null) string
// effects: modifies ss
//          allocates memory (caller must free when popped)
// time: O(m) [amortized]
void sstack_push(const char *str, struct sstack *ss){
  assert(ss);
  if (ss->len == ss->maxlen) {
    ss->maxlen *= 2;
    ss->data = realloc(ss->data, ss->maxlen * (sizeof(char *)));
  }
  
  char *string = malloc((strlen(str) + 1) * (sizeof(char)));
  ss->data[ss->len] = string;
  strcpy(ss->data[ss->len], str);
  ss->len += 1;
}

// stack_status(ss) displays information about ss
// note: uses printf("status: %d/%d\n", length, maximum_capacity)
//       to display the current (length/maximum_capacity) of the stack
// effects: produces output
// time: O(1)
void sstack_status(const struct sstack *ss){
  printf("status: %d/%d\n", (ss->len), (ss->maxlen));
}





