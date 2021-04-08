#include <stdbool.h>

// banknotes: a module for dealing with banknotes/bills

// SEASHELL_READONLY

struct banknotes {
  int hundreds;  // $100.00 must be >= 0
  int fifties;   //  $50.00 must be >= 0
  int twenties;  //  $20.00 must be >= 0
  int tens;      //  $10.00 must be >= 0
  int fives;     //   $5.00 must be >= 0
};

// banknotes_valid(bills) determines if bills is a valid banknotes
//   (all field values are natural numbers)
bool banknotes_valid(struct banknotes bills);

// banknotes_to_dollars(bills) finds the value of bills in dollars (loonies)
// requires: banknotes_valid(bills)
int banknotes_to_dollars(struct banknotes bills);

// banknotes_print(bills) prints the quantity of each type of bill in bills
// requires: banknotes_valid(bills)
// effects:  may display a message
void banknotes_print(struct banknotes bills);
