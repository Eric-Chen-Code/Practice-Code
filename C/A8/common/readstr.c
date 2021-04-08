// Implementation file for readstr module

#include <stdio.h>
#include <stdlib.h>
#include "readstr.h"

// see .h for details
char *readstr(void) {
  char c;
  if (scanf(" %c", &c) != 1) return NULL; // ignore initial WS
  int maxlen = 1;
  int len = 1;
  char *str = malloc(maxlen * sizeof(char));
  str[0] = c;
  while (1) {
    if (scanf("%c", &c) != 1) break;
    if (c == ' ' || c == '\n') break;
    if (len == maxlen) {  // DOUBLE the allocated array size
      maxlen *= 2;
      str = realloc(str, maxlen * sizeof(char));
    }
    ++len;
    str[len - 1] = c;
  }
  // shrink the array back down to the correct size
  str = realloc(str, (len + 1) * sizeof(char));
  str[len] = '\0';
  return str;
}
