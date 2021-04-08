#include "cs136.h"

// SEASHELL_READONLY

// This EXAMPLE shows how to use read_symbol to perform I/O-based testing.

int value = 0;


// plus(n) adds n to value
// effects: modifies global variable value

void plus(int n) {
  value += n;
  printf("value: %d\n", value);
}


// minus(n) subtracts n from value
// effects: modifies global variable value

void minus(int n) {
  value -= n;
  printf("value: %d\n", value);
}

// example_io() reads and interprets plus/minus commands
// effects: reads input
//          may generate output
//          may terminate program with error code

void example_io(void) {
  int PLUS = lookup_symbol("plus");
  int MINUS = lookup_symbol("minus");
  int QUIT = lookup_symbol("quit");
  
  while(1) {
    
    int cmd = read_symbol();
    if (cmd == INVALID_SYMBOL || cmd == QUIT) {
      break;
    }
    
    int n = 0;
    int retval = scanf("%d", &n);
    if (retval != 1 || (cmd != PLUS && cmd != MINUS)) {
      printf("INVALID INPUT\n");
      break;
    }
    
    if (cmd == PLUS) {
      plus(n);
    } else if (cmd == MINUS) {
      minus(n);
    }
  }
}


int main(void) {
  example_io();
}
