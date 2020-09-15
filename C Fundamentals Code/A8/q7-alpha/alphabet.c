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

#include "alphabet.h"
#include "slurp.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include "cs136-trace.h"
#include "readstr.h"
#include <string.h>

struct alphabet {
  int maplen;
  struct wordmap *map;
  char* encode;
  char decode;
};



// alphabet_create(map, maplen, encode_fail, decode_fail) creates
//   a new alphabet ADT from the given word map and the string/char
//   to use when an encode/decode mismatch occurs
// requires: every char c and string word in map is unique [not asserted]
// effects: allocates memory (must call alphabet_destroy)
// time: o(n) where n is the number of items in the wordmap
struct alphabet *alphabet_create(const struct wordmap map[], int maplen, const char *encode_fail, char decode_fail) {
  struct alphabet *a = malloc(sizeof(struct alphabet));
  a->maplen = maplen;
  a->map = malloc((a->maplen) * (sizeof(struct wordmap)));
  int array = 0;

  while (array < (a->maplen)) {
    a->map[array] = map[array];
    array += 1;
  }
  char* string = malloc ((strlen(encode_fail) + 1)*(sizeof(char)));
  strcpy(string, encode_fail);
  a->encode = string;
  a->decode = decode_fail;

  return a;
}

// alphabet_destroy(st) destroys the alphabet a
// effects: a is no longer valid
// time: ??? comment in implementation
void alphabet_destroy(struct alphabet *a) {
  int array = 0;
  while (array < (a->maplen)) {
    free((a->map[array]).word);
  }
  free(a->map);
  free(a);
}

// alphabet_encode(a, msg) returns a 'new' string (caller must free)
//   that is the result of msg being encoded via the alphabet
// notes: adds a single space in-between the codes
//        unknown codes are shown as encode_fail (see alphabet_create)
// example: for a typical nato alphabet,
//          alphabet_encode(a, "cs") => "charlie sierra"
// effects: allocates memory (caller must free)
// time: ??? comment in implmentation
char *alphabet_encode(const struct alphabet *a, const char *msg) {
  char code;
  int stringlen = 100;
  int len = 0;
  char *string = malloc(100 * (sizeof(char)));
  int scan = scanf("%c", &code);

  while (scan != EOF) {
    int array = 0;
    while (array <= a->maplen) {
      if (array == a->maplen) {
        if (stringlen <= (len + strlen(a->encode) + 1)) {
          stringlen *= 2;
          string = realloc(string, stringlen * (sizeof(char)));
        }
        if (len == 0) {
          strcat(string, a->encode);
          len += (strlen(a->encode));
        }
        else {
          strcat(string, " ");
          strcat(string, a->encode);
          len += (strlen(a->encode));
        }
      }
      else if ((a->map[array]).c == code) {
        if (len == 0) {
          strcat(string, (a->map[array]).word);
          len += (strlen((a->map[array]).word));
        }
        else {
          strcat(string, " ");
          strcat(string, (a->map[array]).word);
          len += (strlen((a->map[array]).word) + 1);
        }
      }
      else {
        array += 1;
      }
    }

    scan = scanf("%c", &code);
  }
  trace_string(string);
  return string;
}

// alphabet_decode(a, msg) returns a 'new' string (caller must free)
//   that is the result of msg being decoded via the alphabet
// notes: whitespace separates codes in msg (extra whitespace ignored)
//        unknown codes are shown as decode_fail (see alphabet_create)
// example: for a typical nato alphabet,
//          alphabet_decode(a, "charlie    sierra") => "cs"
// effects: allocates memory (caller must free)
// time: ??? comment in implmentation
char *alphabet_decode(const struct alphabet *a, const char *msg) {
return a->encode;
}

