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

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////


#include <assert.h>
#include "set.h"
/**************************************
 * DO NOT CHANGE THIS VALUE.  FOR REAL*
 *************************************/       
const int SET_MAX = 1000;


// see .h
void set_init(struct set *s) {
  assert(s);
  s->count = 0;
}


// see .h
int set_count(const struct set *s) {
  assert(s);
  return s->count;
}

// see .h
bool set_member(const struct set *s, int item) {
    // COMPLETE THIS FUNCTION
}

// see .h
void set_add(struct set *s, int item) {
    // COMPLETE THIS FUNCTION
}

// see .h
void set_remove(struct set *s, int item) {
  // COMPLETE THIS FUNCTION
}


// see .h
void set_union(struct set *dest, const struct set  *a, const struct set *b) {
  // COMPLETE THIS FUNCTION
}

// see .h
void set_intersect(struct set *dest, const struct set *a, const struct set *b) {
  // COMPELTE THIS FUNCTION
}

// see .h
void array_to_set(struct set *dest, const int src[], int len) {
  // COMPELTE THIS FUNCTION
}


// see .h
void set_print(const struct set *s) {
  // COMPELTE THIS FUNCTION
}
