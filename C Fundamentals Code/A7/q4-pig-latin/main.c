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

// This program converts English text to Pig Latin.

// DO NOT CHANGE: /////////////////////////////////////////////////////////
// NOTE: You may assume that this is the maximum length of a string/word read
// from input is 1000 characters.
//////////////////////////////////////////////////////////////////////////

#include "cs136-trace.h"
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
// vowel(char c) determines whether or not a character is a vowel
// time: O(1)
bool vowel(char c) {
  if ((c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u')) {
    return true;
  }
  else if ((c == 'A') || (c == 'E') || (c == 'I') || (c == 'O') || (c == 'U')) {
    return true;
  }
  else {
    return false;
  }
}

// time: O(N^2)
int main() {
  char word[1000];
  char store[1000];
  int scan = scanf("%c", &word[0]);
  while (scan != EOF) {
    if ((word[0] == 'a') || (word[0] == 'e') || (word[0] == 'i') || (word[0] == 'o') || (word[0] == 'u')) {
      int index = 0;
      while (word[index] != ' ') {
        index += 1;
        scan = scanf("%c", &word[index]);
      }
      char way[3] = "way";
      strcat(word, way);
      printf("%s", word);
    }

    else if ((word[0] == 'A') || (word[0] == 'E') || (word[0] == 'I') || (word[0] == 'O') || (word[0] == 'U')) {
      int index = 0;
      while (word[index] != ' ') {
        index += 1;
        scan = scanf("%c", &word[index]);
      }
      char way[3] = "way";
      strcat(word, way);
      printf("%s", word);
    }
  }

  else if (word[0] >= 'a') {
    store[0] = word[0];
    word[0] = '\0';
    int index = 0;
    while (!vowel(store[index])) {
      index += 1;
      scan = scanf("%c", &store[index]);
    }
    word[0] = store[index];
    store[index] = '\0';
    index = 0;

    while (word[index] != ' ') {
      index += 1;
      scan = scanf("%c", &word[index]);
    }
    index += 1;
    word[index] = '\0';
    strcat(word, store);
    int length = strlen(word);
    word[length + 1] = 'a';
    word[length + 2] = 'y';
    word[length + 3] = '\0';
    printf("%s", word);
  }

  else {
    store[0] = word[0];
    word[0] = '\0';
    int index = 0;
    while (!vowel(store[index])) {
      index += 1;
      scan = scanf("%c", &store[index]);
    }
    word[0] = store[index];
    store[index] = '\0';
    index = 0;

    while (word[index] != ' ') {
      index += 1;
      scan = scanf("%c", &word[index]);
    }
    index += 1;
    word[index] = '\0';
    strcat(word, store);
    int length = strlen(word);
    word[length + 1] = 'a';
    word[length + 2] = 'y';
    word[length + 3] = '\0';
    printf("%s", word);
  }

}













