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

#include <stdio.h>
#include <assert.h>
#include "sequence.h"
#include "seq-tools.h"

void sequence_add_one(struct sequence *seq) {

  int length = sequence_length(seq);
  for (int i = 0; i < length; i++) {
    int new_value = (sequence_item_at(seq, i)) + 1;
    sequence_remove_at(seq, i);
    sequence_insert_at(seq, i, new_value);
  }
}

// sequence_build(n) returns a NEW sequence of length n
//   with the items 0, 1, ..., n-1
struct sequence *sequence_build(int n) {
  struct sequence *seq = sequence_create();
  int count = 0;
  while (n > 0) {
    sequence_insert_at (seq, count, count);
    count += 1;
    n -= 1;
  }
  return seq;
}

// sequence_map(fp, seq) applies fp to each item (eg., item_k = fp(item_k))
// effects: modifies seq
void sequence_map(int (*fp)(int), struct sequence *seq) {
  int length = sequence_length(seq);
  for (int i = 0; i < length; i++) {
    int new_value = fp(sequence_item_at(seq, i));
    sequence_remove_at(seq, i);
    sequence_insert_at(seq, i, new_value);
  }
}


/******************************************************************************
// DO NOT REMOVE THIS COMMENT BLOCK

These two geese are named "Black" and "Gold".
They are here to ensure your black & gold code is sufficiently separated
to avoid any "contamination" if you give/receive help on a black question.



                                       ___
                                   ,-""   `.
                                 ,'  _   e )`-._
                                /  ,' `-._<.===-'
                               /  /
                              /  ;
                  _          /   ;
     (`._    _.-"" ""--..__,'    |
     <_  `-""                     \
      <`-                          :
       (__   <__.                  ;
         `-.   '-.__.      _.'    /
            \      `-.__,-'    _,'
             `._    ,    /__,-'
                ""._\__,'< <____
                     | |  `----.`.
                     | |        \ `.
                     ; |___      \-``
                     \   --<
                      `.`.<
                 hjw    `-'





                                                            _...--.
                                            _____......----'     .'
                                      _..-''                   .'
                                    .'                       ./
                            _.--._.'                       .' |
                         .-'                           .-.'  /
                       .'   _.-.                     .  \   '
                     .'  .'   .'    _    .-.        / `./  :
                   .'  .'   .'  .--' `.  |  \  |`. |     .'
                _.'  .'   .' `.'       `-'   \ / |.'   .'
             _.'  .-'   .'     `-.            `      .'
           .'   .'    .'          `-.._ _ _ _ .-.    :
          /    /o _.-'     LGB       .--'   .'   \   |
        .'-.__..-'                  /..    .`    / .'
      .'   . '                       /.'/.'     /  |
     `---'                                   _.'   '
                                           /.'    .'
                                            /.'/.'




source: https://ascii.co.uk/art/goose    
******************************************************************************/

// sequence_equal(seq1, seq2) determines if seq1 and seq2 are identical
bool sequence_equal(const struct sequence *seq1, const struct sequence *seq2) {
  if (sequence_length(seq1) == sequence_length(seq2)) {
    int length = sequence_length(seq1);
    int count = 0;
    while (length > 0) {
      if (sequence_item_at(seq1, 0) == sequence_item_at(seq2, 0)) {
        length -= 1;
        count += 1;
      }
      else {
        return false;
      }
    }
    return true;
  }
  else {
    return false;
  }
}
// sequence_add_sum(seq) modifies seq so that each item (item_k) is the
//   sum of itself and all previous items (item_k = item_0 + ... item_k)
//   for example, the sequence (1,2,3)->(1,1+2,1+2+3)->(1,3,6)
// effects: modifies seq
void sequence_add_sum(struct sequence *seq) {
  int sum = 0;
  int length = sequence_length(seq);
  for (int i = 0; i < length; i++) {
    int new_value = (sequence_item_at(seq, i)) + sum;
    sum += sequence_item_at(seq, i);
    sequence_remove_at(seq, i);
    sequence_insert_at(seq, i, new_value);
  }
}

// sequence_avg_and_variance(seq, &avg, &var) modifies avg and var
//   to store the average (mean) of all items
//   and the variance of all items.
//   The variance is calculated by summing over all items the difference
//   between the item and the average squared, divided by the number of items
//     sum [(item_k - avg)^2] / length
// notes:    uses simple integer arithmetic and division [rounds toward zero]
// requires: length(seq) > 0
// effects:  modifies *avg and *var
void sequence_avg_and_variance(const struct sequence *seq, int *avg, int *var) {
  int og_length = sequence_length(seq);
  int length = sequence_length(seq);
  int count = 0;
  int sum = 0;
  int variance_count = 0;
  int variance_length = sequence_length(seq);
  int variance_sum = 0;

  while (length > 0) {
    int val = sequence_item_at(seq, count);
    sum += (val);
    count += 1;
    length -= 1;
  }
  *avg = (sum/og_length);
  while (variance_length > 0) {
    int value = sequence_item_at(seq, variance_count);
    variance_sum += ((value - *avg)*(value - *avg));
    variance_count += 1;
    variance_length -= 1;
  }
  *var = variance_sum/og_length;
  
}

// sequence_filter(fp, seq) removes all items from seq for which fp(item)
//   is false
// effects: modifies seq
void sequence_filter(bool (*fp)(int), struct sequence *seq) {
  int length = sequence_length(seq);
  int count = 0;
  for (int i = 0; i < length; i++) {
    if (fp(sequence_item_at(seq, count)) == true) {
      count += 1;
    }
    else {
      sequence_remove_at(seq, count);
    }
  }
}

// sequence_foldl(fp, base, seq) applies the foldl function (from Racket)
//   to the elements of seq, starting with the initial value of base.
//   in other words, fp(item_n-1, ... fp(item_1, fp(item_0, base)))
//   if seq is empty, it returns base
int sequence_foldl(int (*fp)(int, int), int base, const struct sequence *seq) {
  int length = sequence_length(seq);
  if (length == 0) {
  return base;
  }
  else {
    int new_value = 0;
    for (int i = 0; i < length; i++) {
    new_value = fp(sequence_item_at(seq, i), base);
      base = new_value;
  }
    return new_value;
  }
}

