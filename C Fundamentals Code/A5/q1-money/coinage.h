#include <stdbool.h>

// coinage: a module for dealing with coinage (coins)

// SEASHELL_READONLY

struct coinage {
  int toonies;   //  $2.00 must be >= 0
  int loonies;   //  $1.00 must be >= 0
  int quarters;  //  $0.25 must be >= 0
  int dimes;     //  $0.10 must be >= 0
  int nickels;   //  $0.05 must be >= 0
  int pennies;   //  $0.01 must be >= 0
};

// coinage_valid(struct coinage coins) determines if coins is a valid coinage
//   (all field values are natural numbers)
bool coinage_valid(struct coinage coins);

// coinage_to_cents(coins) finds the value of coins in cents
// requires: coinage_valid(coins)
int coinage_to_cents(struct coinage coins);

// coinage_print(coins) prints the quantity of each type of coins in coins
// requires: coinage_valid(coins)
// effects:  displays a message
void coinage_print(struct coinage coins);

