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

#include "cs136-trace.h"
#include <stdio.h>

int main(void) {
  int count = 0;
  int c = 0;
  int scan = scanf("%d", &c);
   while (scan == 1) {
      if (c < 40) {
        scan = scanf("%d", &c);
      }
     else if (c > 41) {
     scan = scanf("%d", &c);
     }
      else if (c == 40) {
        count += 1;
        scan = scanf("%d", &c);
      }
      else if ((c == 41) && (count > 0)) {
          count -= 1;
          scan = scanf("%d", &c);
        }
        else {
          printf("unbalanced\n");
        } 
      }
  
    if ((scan != 1) && (count == 0)) {
      printf("balanced\n");
    }
    else {
    printf("unbalanced\n");
    }
  }


