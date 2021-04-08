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

#include "symbol-table.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "readstr.h"
#include <string.h>

struct symbol_table {
  char **symbol;
  int front;
  int len;
  int maxlen;
  int count;
};
// is_valid_symbol_string(s) determines if the string in s is a valid
//   symbol according to the following naming rules:
//   * length is at least one
//   * only contain letters, underscores and numbers
//   * starts with a letter
// time: O(m)
bool is_valid_symbol(const char *s) {
  int count = 0;
  int len = strlen(s);
  while (count < len) {
    if (count == 0) {
      if (((s[0] <= 'Z') && (s[0] >= 'A')) || ((s[0] <= 'z') && (s[0] >= 'a'))) {
        count += 1;
      }
      else {
        return false;
      }
    }
    else if (((s[count] <= 'Z') && (s[count] >= 'A')) || ((s[count] <= 'z') && (s[count] >= 'a')) || (s[count] == '_') || ((s[count] <= '9') && (s[count] >= '1'))) {
      if (len >= 1) {
        count += 1;
      }
      else {
        return false;
      }
    }
    else {
      return false;
    }
  }
  return true;
}

// symbol_table_create() creates an empty symbol table
// effects: allocates memory (must call symbol_table_destroy)
// time: O(1)
struct symbol_table *symbol_table_create(void) {
  struct symbol_table *st = malloc (sizeof(struct symbol_table));
  st->len = 0;
  st->maxlen = 1;
  st->count = 0;
  st->symbol = malloc ((st->maxlen) * (sizeof(char *)));
  return st;
}

// symbol_table_destroy(st) destroys the symbol table st
// effects: st is no longer valid
// time: O(n)
void symbol_table_destroy(struct symbol_table *st) {
  int array = 0;
  while (array < st->len) {
    free(st->symbol[array]);
    array += 1;
  }
  free(st->symbol);
  free(st);
}

// the constant INVALID_SYMBOL is returned by symbol_lookup & symbol_read when:
// * the string (parameter or from input) is not a valid symbol
// * the end of the input (e.g., EOF) is encountered in symbol_read
const int INVALID_SYMBOL = -1;

// symbol_count(st) returns the number of symbol IDs that have been
//   generated
// time: O(1)
int symbol_count(const struct symbol_table *st) {
  return st->count;
}

// symbol_read(st) returns the ID for the next symbol from input
//   (which may be a new or existing ID) or INVALID_SYMBOL
// effects: reads from input
//          may modifies st
// time: O(n)
int symbol_read(struct symbol_table *st) {
  char *string = readstr();
  int retval = symbol_lookup(st, string);
  free(string);
  return retval;
}

// symbol_lookup(st, symbol_string) returns the ID for symbol_string
//   (which may be a new or existing ID) or INVALID_SYMBOL
// effects: may modify st
// time: O(n)
int symbol_lookup(struct symbol_table *st, const char *symbol_string) {
  char *string = malloc((strlen(symbol_string) + 1)*(sizeof(char)));
  strcpy(string, symbol_string);

  if ((string) == NULL) {
    free(string);
    return INVALID_SYMBOL;
  }
  else if (!(is_valid_symbol(string))) {
    free(string);
    return INVALID_SYMBOL; 
  }

  int len = st->len;
  int array = 0;
  while (array < len) {
    if (strcmp(string, st->symbol[array]) == 0) {
      free(string);
      return array + 1;
    }
    else {
      array += 1;
    }
  }

  st->symbol[st->len] = (string);
  st->count += 1;
  st->len += 1;

  if (st->len == st->maxlen) {
    st->maxlen *= 2;
    st->symbol = realloc(st->symbol, st->maxlen*(sizeof(char *)));
  }
  return st->len;
}


// symbol_print(st, symbol_id) prints the symbol corresponding to symbol_id
//   using "%s" (no newline)
// requires: symbol_id is a valid ID: 0 < symbol_id <= symbol_count()
// effects: displays a message
// time: O(m)
void symbol_print(const struct symbol_table *st, int symbol_id) {
  printf("%s", st->symbol[symbol_id - 1]);
}


