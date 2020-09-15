#include "money.h"

// cashier: a module for dealing with money and making change

// SEASHELL_READONLY

// cashier_reduce(m) returns a new struct money that has the same amount 
//   as m but uses the fewest possible number of bills and coins
// requires: money_valid(m)
struct money cashier_reduce(struct money m);

// cashier_change(price, given) determines the money (change)
//   to be returned to a customer if the cashier is given money
//   for a purchased amount price.
// note: returned value uses the fewest number of bills and coins (see above)
// requires: money_valid(given)
//           money_to_amount(given) >= price
struct money cashier_change(struct amount price, struct money given);
