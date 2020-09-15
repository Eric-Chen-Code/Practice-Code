#include <stdbool.h>
#include "banknotes.h"
#include "coinage.h"
#include "amount.h"

// money: a module for dealing with money
//        money consists of banknotes (bills)
//        and coinage (coins)

// SEASHELL_READONLY

struct money {
  struct banknotes bills;
  struct coinage coins;
};


// money_valid(m) determines if m is a valid money structure
bool money_valid(struct money m);

// money_to_amount(struct money m) converts money m to an amount
// requires: money_valid(m)
struct amount money_to_amount(struct money m);

// money_print(m) prints the money m
// requires: money_valid(m)
// effects:  displays a message
void money_print(struct money m);
