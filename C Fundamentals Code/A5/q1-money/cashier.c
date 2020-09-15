#include "cashier.h"

// see integrity.c for integrity details

struct money cashier_reduce(struct money m) {
  return m;
}

struct money cashier_change(struct amount price, struct money given) {
  return given;
}
