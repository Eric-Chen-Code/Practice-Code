
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

// This program implements testing for the String List ADT.

#include <stdio.h>
#include <stdlib.h>
#include "str-list.h"


int main() {

  // NOTE: This is what the public test will do.
  // You can use this code with simple.in and simple.expect to see if you pass
  // the public tests in Seahshell.
  struct str_list *public_list = str_list_create();
  str_list_add(public_list, "Hello");
  str_list_print(public_list);
  printf("\n");
  str_list_print_ordered(public_list);
  str_list_destroy(public_list);
  public_list = NULL;
  ///////////////////////////////////////////////////////////////

  // Add your own testing here.
  // Note that if you want to do more printing here you will need
  // to create your own .in and .expect files and just don't worry
  // about the tests done with simple.in and simple.expect failing.

}
