#include <stdbool.h>

// SEASHELL_READONLY

// requires: all array parameters are valid arrays of length len

// k_in_row(arr, len, k) returns true if arr contains at least k equal values
//   in a row, false otherwise
// time: O(n + k)
bool k_in_row(const int arr[], int len, int k);


// max_freq(arr, len) returns the most frequent element in arr,
//  (if more than one element has the same frequency, selects one arbitrarially)
// effects: the array may be mutated
// time: O(n log n)

int max_freq(int arr[], int len);


// max_diff(a, len) finds the maximum difference between two elements in a
// time: O(n)
int max_diff(const int a[], int len);

