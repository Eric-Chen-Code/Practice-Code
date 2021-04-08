#include "amount.h"

// see integrity.c for integrity details

bool amount_valid(struct amount amt) {
  if ((amt.dollars >= 0) && (amt.cents >= 0) && (amt.cents <= 99)) {
    return true;
  } else {
    return false;
  }
}

void amount_print(struct amount amt) {
  printf ("$%d.%02d", amt.dollars, amt.cents);
}  

struct amount amount_add(struct amount a1, struct amount a2) {
  struct amount a3;
  a3.dollars = (a1.dollars + a2.dollars);
  a3.cents = (a1.cents + a2.cents);

  if (a3.cents >= 100) {
    a3.dollars = a3.dollars + 1;
    a3.cents = a3.cents - 100;
  }
  return a3;
}

bool amount_equal(struct amount a1, struct amount a2) {
  if ((a1.dollars == a2.dollars) && (a1.cents == a2.cents)) {
    return true;
  }
  else {
    return false;
  }
}

int amount_to_cents(struct amount amt) {
  return ((amt.dollars * 100) + amt.cents);
}
