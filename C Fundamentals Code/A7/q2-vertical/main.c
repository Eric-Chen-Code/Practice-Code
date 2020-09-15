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
// This program prints the words of a sentence vertically.

#include "cs136-trace.h"
#include <stdio.h>
#include <assert.h>
#include "str-list.h"
#include "str-create-destroy.h"
#include <string.h>
#include "str-structs.h"

int main() {
  // first loop make list
  // second loop make box
  // all encompassed in one big loop

  struct str_list *list = str_list_create();
  int index = 0;
  int scan = scanf("%s", (list->strings[index]).string);
    list->len += 1;


  while (scan != EOF) {
    int add_zeros = strlen((list->strings[index]).string);
    for (int i = 0; i < (1000 - strlen((list->strings[index]).string)); i++) {
      (list->strings[index]).string[add_zeros] = '\0';
      add_zeros += 1;
    }

    int max = 0;
    while (1) {
      if (strlen((list->strings[index]).string) > max) {
        max = strlen((list->strings[index]).string);
      }
      if (((list->strings[index]).string[strlen((list->strings[index]).string) - 1] == '.') ||
          ((list->strings[index]).string[strlen((list->strings[index]).string) - 1] == '?') ||
          ((list->strings[index]).string[strlen((list->strings[index]).string) - 1] == '!')) {
        index = 0;
        break;
      }
      else {
        index += 1;
        (list->len) += 1;
        scan = scanf("%s", (list->strings[index]).string);
        int zeros = strlen((list->strings[index]).string);
        for (int i = 0; i < (1000 - strlen((list->strings[index]).string)); i++) {
          (list->strings[index]).string[zeros] = '\0';
          zeros += 1;
        }
      }
    }

    int len = list->len;
    int height = (max + 2);
    printf("+");
    for (int i = len; i > 0; i--) {
      printf("-");
    }
    printf("+\n");
    height -= 2;

    while (height > 0) {
      printf("|");
      for (int i = 0 ; i < (list->len); i++) {
        if (((list->strings[i]).string[index]) == '\0')
        {
          printf(" ");
        }
        else {
          printf("%c", (list->strings[i]).string[index]);
        }
      }
      printf("|\n");
      index += 1;
      height -= 1;
    }
    printf("+");
    for (int i = len; i > 0; i--) {
      printf("-");
    }
    printf("+\n");
    printf("\n");
    index = 0;
    scan = scanf("%s", (list->strings[index]).string);
    list->len = 1;

  }
}


