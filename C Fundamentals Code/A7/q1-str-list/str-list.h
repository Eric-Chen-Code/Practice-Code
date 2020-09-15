
// SEASHELL_READONLY

#include "str-create-destroy.h"

// This is a string list module. It is designed to keep track
// of a list of strings and a value that can be associated with each string.
// It is up to the client to decide how to use the value (or to not use it).

//////////////////////////////////////////////////////////////////
// Global const values defined in (str-list.c)
extern const int MAX_STRING_LEN;
extern const int MAX_STRINGS;
// Error conditions
extern const int STRING_NOT_FOUND;
extern const int STRING_TOO_LONG;
extern const int STRING_LIST_FULL;
//////////////////////////////////////////////////////////////////

struct str_list;  // opaque structure

// str_list_len(l) returns the number of elements in the string list l
// requires: l is not NULL
// time: O(1)

int str_list_len(const struct str_list *l);


// str_list_max_len(l) returns the maximum number elements
//   that can be stored in the string list l
// requires: l is not NULL
// time: O(1)
int str_list_max_len(const struct str_list *l);

// str_list_add(l, s) adds the string s to l and
//   returns the index of where in the array s has been added.
//   Note that the strings added DO NOT have to be unique.
//   Fails and returns STRING_LIST_FULL if the list is full or
//   STRING_TOO_LONG if the string s is too long to be added.
// effects: modifies *l
// requires: l and s are not NULL
// time: O(S) where S is the length of the string s

int str_list_add(struct str_list *l, const char *s);

// str_list_find(l, s) looks for the string s in l,
//   returns the index of the array location if found.
//   If more than one copy of s is present,
//   return the lowest index in which the string can be found.
//   Fails and returns STRING_NOT_FOUND if the string isn't in the list
//   or STRING_TOO_LONG if the string s is too long to be stored in the list
// requires: l and s are not NULL
// time: O(N*S) where N is the number of elements in l and 
//   and S the length of the string s

int str_list_find(const struct str_list *l, const char *s);

// str_list_get_string(l, index) return a pointer to the string
//   specified by index 
// requires: l is not NULL and index is valid
// time: O(1)

char *str_list_get_string(struct str_list *l, int index);

// str_list_set_value(l, index, v) changes the value associated with
//   the string specified by index to the value v.
//   Note: a value is associated with each instance of string that is
//   stored in the list. Clients can choose how they want to use it.
// effects: modifies *l
// requires: l is not NULL and index is valid
// time: O(1)

void str_list_set_value(struct str_list *l, int index, int v);

// str_list_get_value(l, index) return the value associated with
//   the string specified by index 
// requires: l is not NULL and index is valid
// time: O(1)

int str_list_get_value(const struct str_list *l, int index);


// str_list_reset(l) resets the the string list l.
//   After calling this function l should be empty and able to be reused.
//   All values associated with string should be set to zero and
//   all strings should contain the empty string.
// effects: modifies *l
// requires: l is not NULL
// time: O(N) where N is the maximum number of elements
//    that can be stored in l.

void str_list_reset(struct str_list *l);

// str_list_print(l) prints the strings from the list
//   in the order they were added.
//   If the list is empty it prints the string "[empty]\n"
// effects: produces output
// requires: l is not NULL
// time: O(N*S) where N is the number of elements in l and S
//       is the length of the longest string in l

void str_list_print(const struct str_list *l);


// str_list_print_orderd(l) prints the strings from the list
//   in the order from the string with the highest associated value
//   to the lowest associated value (ties are broken by printing
//   the string that was added first.
//   If the list is empty it prints the string "[empty]\n"
//   Note that this can be done WITHOUT having to use a sorting algorithm
//   and without having to copy the list.
// effects: produces output
// requires: l is not NULL
// time: O(N^2*S) where N is the number of elements in l
//   and S is the length of the longest string in l

void str_list_print_ordered(const struct str_list *l);
