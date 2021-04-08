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

#include <stdbool.h>

// requires: all array parameters are valid arrays of length len

// k_in_row(arr, len, k) returns true if arr contains at least k equal values
//   in a row, false otherwise
// time: O(n*k) inner has k number of iterations O(k) and loop has n number of iterations O(n) thus by iterative analysis, O(n*k)
//  (use k for k, and n for length).
bool k_in_row(const int arr[], int len, int k);


// max_freq(arr, len) returns the most frequent element in arr,
//  (if more than one element has the same frequency, selects one arbitrarially)
// time: O(n^2) one inner loop and one outer loop with n thus by iterative analysis O(n^2)
int max_freq(const int arr[], int len);


// max_diff(a, len) finds the maximum difference between two elements in a
// time: O(n^2) one inner loop and one outer loop with n thus by iterative analysis O(n^2)
int max_diff(const int a[], int len);

