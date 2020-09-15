#include <stdbool.h>

// amount: a module for dealing with amounts of money

// SEASHELL_READONLY

struct amount {
  int dollars;   // must be >= 0
  int cents;     // must be >= 0 and <= 99
};

// amount_valid(amt) determines if amt is a valid amount
bool amount_valid(struct amount amt);

// amount_print(amt) prints the amount amt
// requires: amount_valid(amt)
// effects:  displays a message
void amount_print(struct amount amt);

// amount_add(a1, a2) adds the two specified amounts (a1 and a2)
// note: result is a valid amount
// requires: amount_valid(a1) and amount_valid(a2)
struct amount amount_add(struct amount a1, struct amount a2);

// amount_equal(a1, a2) determines if a1 and a2 are the same amount.
// requires: amount_valid(a1) and amount_valid(a2)
bool amount_equal(struct amount a1, struct amount a2);

// amount_to_cents(amt) converts the amount amt into cents
// requires: amount_valid(amt)
int amount_to_cents(struct amount amt);
