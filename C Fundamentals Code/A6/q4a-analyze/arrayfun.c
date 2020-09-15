// SEASHELL_READONLY

#include <assert.h>
#include <stdlib.h>
#include <stdbool.h>
#include "arrayfun.h"

// see arrayfun.h for documentation

bool k_in_row(const int arr[], int len, int k) {
  assert(arr);
  assert(len > 0);
  
  for (int i = 0; i < len; ++i) {
    int count = 0;
    for (int j = 0; j < k; ++j) {
      if (i + j < len && arr[i] == arr[i+j]) {
        ++count;
      } 
    }
    if (count == k) {
      return true;
    }
  }
  return false;
}

int max_freq(const int arr[], int len) {
  assert(arr);
  assert(len > 0);
  
  int freq = 1;
  int freq_i = 0;
  for (int i = 0; i < len; ++i) {
    int count = 0;
    for (int j = 0; j < len; ++j) {
      if (arr[i] == arr[j]) {
        ++count;
        if (count > freq) {
          freq = count;
          freq_i = i;
        }
      }
    }
  }
  return arr[freq_i];
}


int max_diff(const int a[], int len) {
  assert(a);
  assert(len > 0);
  
  int temp = 0;
  for (int i = 0; i < len; ++i) {
    for (int j = i + 1; j < len; ++j) {
      if (abs(a[j] - a[i]) > temp) {
        temp = abs(a[j] - a[i]);
      }
    }
  }
  return temp;
} 
