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

#include "cs136.h"
#include "draw-io.h"

// draw_triangle(size) draws a triangle inside of a square
//   with dimensions (2 * size + 3)
// requires: size >= 0
// effects:  produces output

void draw_triangle(int size) {
  assert(size >= 0);
  const int width = size * 2 + 3;
  for (int y = 0; y < width; ++y) {
    for (int x = 0; x < width; ++x) {
      if (x <= y) {
        printf("#");
      } else {
        printf(".");
      }
    }
    printf("\n");
  }
}


void draw_n(int height) {
  int backslash = 0;
  int global_backslash = 0;
  int og_height = height;
  int side_height = og_height;
  
  for (int i = height; i > 0; --i) {
    printf("|");
    if (global_backslash == 0) {
    printf("\\");
      global_backslash += 1;
      side_height -= 1;
      while (side_height > 0) {
        printf(" ");
        side_height -= 1;
      }
      side_height = og_height;
      printf("|\n");
    }
    else if (global_backslash > 0) {
      backslash = global_backslash;

      while (backslash > 0) {
      printf(" ");
        side_height -= 1;
        backslash -= 1;
      }
      side_height -= 1;
       printf("\\");
      
      while (side_height > 0) {
      printf(" ");
        side_height -= 1;
      }
    printf("|\n");
      side_height = og_height;
      backslash = global_backslash;
      global_backslash += 1;
    }
    }
    
  }

  void draw_box(int size) {
    
  }  


  void draw_xbox(int size) {
  }  


  void draw_zigzag(int width, int height) {
  }


  int main(void) {
    draw_input();
  }
/*   int backslash = 0;
  int og_backslash = 0;
  int new_height = height;
  int og_height = height;
  while (height > 0) {
    backslash = og_backslash;
    if (og_backslash == 0) {
      printf("|");
      printf("\\");
      new_height -= 1;
      while (new_height > 0) {
        printf(" ");
      }
      printf("|");
      og_backslash += 1;
      new_height = og_height;
      height -= 1;
    }
    else if (og_backslash > 0) {
      backslash = og_backslash;
      printf("|");
      while (backslash > 0) {
        backslash -= 1;
        new_height -= 1;
        printf(" ");
      }
      printf("\\");
      while (new_height > 0) {
      printf(" ");
        new_height -= 1;
      }
      printf("|");
      new_height = og_height;
      og_backslash += 1;
      height -= 1;
    }
  } */
