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


#include <assert.h>
#include <stdlib.h>
#include <stdbool.h>
#include "arrayfun_improved.h"
#include "cs136-trace.h"
#include "merge_sort.h"

// see arrayfun_improved.h for documentation
  bool k_in_row(const int arr[], int len, int k) {
  assert(arr);
  assert(len > 0);
  int count = 0;
  int max_count = 0;
  int index = 0;
  for (int i=0; i < len; i++) {
    if ((i == (len - 1)) && (index == len - 1)) {
      break;
    }
    else if (i == (len - 1)) {
      max_count = count;
      count = 0;
      index += 1;
    }
    else if (arr[index] == arr[i]) {
      count += 1;
    }
  }
  return (k <= max_count);
}

int max_freq(int arr[], int len) {

}

int max_diff(const int a[], int len) {
  assert(a);
  assert(len > 0);
  
  int max_number = 	-2147483648;
  int min_number = 2147483647;
  int index = 0;
  
  while (len > 0) {
    if ((a[index] >= max_number) && (a[index] < min_number)) {
    max_number = a[index];
      min_number = a[index];
    }
    else if (a[index] >= max_number) {
      max_number = a[index];
    }
    else if (a[index] < min_number) {
      min_number = a[index];
    }
    len -= 1;
    index += 1;
  }
  return (max_number - min_number);
} 
