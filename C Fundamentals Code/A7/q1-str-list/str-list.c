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

// This is the String List ADT module implementation

#include <stdio.h>
#include <assert.h>
#include "str-list.h"
#include "str-structs.h"  // This is to get the structure definitions
#include <string.h>

// GLOBAL CONSTANTS DO NOT CHANGE ///////////////////////////////
// NOTE THESE MUST MATCH VALUES USED IN strings-structs.h
const int MAX_STRING_LEN  = 1000;
const int MAX_STRINGS   = 100000;

// For returning error conditions
const int STRING_NOT_FOUND = -1;
const int STRING_TOO_LONG = -2;
const int STRING_LIST_FULL = -3;
/////////////////////////////////////////////////////////////////


// DO NOT CHANGE THIS FUNCTION
// NOTE: Your code for str_list_print and str_list_print_ordered MUST
// call this function.

// str_list_print_element(l, index) prints information about the
//   string stored at the location index (i.e., the string and the associated
//   value)
// effects: prints output
// requires: l must not be null and index must be a valid index

static void str_list_print_element(const struct str_list *l, int index) {
  assert(l);
  assert(index >= 0);
  assert(index < l->len);
  printf("%s : %d\n", l->strings[index].string, l->strings[index].value);
}
/////////////////////////////////////////////////////////////////

int str_list_len(const struct str_list *l) {
  assert(l != NULL);
  return (l->len);
}

int str_list_max_len(const struct str_list *l) {
  assert(l != NULL);
  return (l->max_len);
}

int str_list_add(struct str_list *l, const char *s) {
  assert (l != NULL);
  assert (s != NULL);
  if (str_list_len(l) >= str_list_max_len(l)) {
    return STRING_LIST_FULL;
  }
  else if (strlen(s) > MAX_STRING_LEN) {
    return STRING_TOO_LONG;
  }
  else {
    strcpy(((l->strings[(l->len)]).string), s);
    (l->len) += 1;
    return (l->len);

    //maybe add plus one? Depends on what the rest of the functions do
  }
}

int str_list_find(const struct str_list *l, const char *s) {
  assert(s != NULL);
  assert(l != NULL);
  int index = 0;
  if (strlen(s) > MAX_STRING_LEN) {
    return STRING_TOO_LONG;
  }
  else {
    while (index <= (l->len)) {
      if (strcmp(s, ((l->strings[index]).string)) == 0) {
        return index;
      }
      else {
        index += 1;
      }
    }
  }
  return STRING_NOT_FOUND;
}

char *str_list_get_string(struct str_list *l, int index) {
  return ((l->strings[index]).string);
}

int str_list_get_value(const struct str_list *l, int index) {
  return ((l->strings[index]).value); 
}

void str_list_set_value(struct str_list *l, int index, int v) {
  assert(l != NULL);
  assert((index >= 0) && (index <= MAX_STRINGS));
  (l->strings[index]).value = v;
}

void str_list_reset(struct str_list *l) {
  int len = (l->len);
  while (len >= 0) {
    ((l->strings[(l->len -1)]).string[0]) = '\0';
    ((l->strings[(l->len -1)]).value) = 0;
    len -= 1;
  }
  l->len = 0;
}

void str_list_print(const struct str_list *l) {
  assert(l != NULL);
  if ((l->len) == 0) {
    printf("[empty]\n");
  }
  else {
    int len = 0;
    while (len < (l->len)) {
      str_list_print_element(l, len);
      len += 1;
    }
  }
  // NOTE: MUST call str_list_print_element to print a particular element

}

void str_list_print_ordered(const struct str_list *l) {
  assert(l != NULL);
  int len = (l->len);
  int previous_max = 0;
  
  for (int i = len; i > 0; i--) {
    int max = 0;
    for(int j = 0; j < len; j++) {
      if ((((l->strings[j]).value) >= max) && (((l->strings[j]).value) <= previous_max)) {
        max = ((l->strings[j]).value);
      }
    }
    for (int j = 0; j < len; j++) {
      if (((l->strings[j]).value) == max) {
        str_list_print_element(l, j);
        previous_max = max;
      }
    }
  }
}

