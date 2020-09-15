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

// This program simulates two machines that use cogs and sprocket
// components to make widgets

#include "cs136.h"

/////////////////////////////////////////////////////////////////////////////
// PROVIDED CONSTANTS (DO NOT CHANGE)

const int DEFAULT_BIN_SIZE = 10;
const int DEFAULT_COGS_REQUIRED = 2;
const int DEFAULT_SPROCKETS_REQUIRED = 3;
/////////////////////////////////////////////////////////////////////////////


// MACHINE STRUCTURE:
// specify the details of the machine structure here
// We provided widget_count as an example (because we implemented empty_bin)
// but you may change that field name if you wish.

struct machine {
  int widget_count;
  int cogs_count;
  int sprockets_count;
  int id;
  int completed_bin_size;
  int cogs_required;
  int sprockets_required; 
};

// NOTE: for all functions below that use struct machine *m
// requires: m points at a valid machine (i.e., is not null)


// WE HAVE COMPLETED empty_bin FOR YOU AS AN EXAMPLE
// (feel free to change it if you wish)

// empty_bin(m) removes all widgets from the completed bin of m
// effects: modifies *m

void empty_bin(struct machine *m) {
  assert(m);
  m->widget_count = 0;
}


// reset_machine(m) resets machine m back to its initial settings
// effects: modifies *m

void reset_machine(struct machine *m) {
  m->cogs_count = 0;
  m->sprockets_count = 0;
  m->widget_count = 0;
  m->completed_bin_size = DEFAULT_BIN_SIZE;
  m->sprockets_required = DEFAULT_SPROCKETS_REQUIRED;
  m->cogs_required = DEFAULT_COGS_REQUIRED;
}


// display_status(m) displays the current state of the machine m
// effects: produces output

void display_status(const struct machine *m) {
  printf("number of cogs: %d\n", (m->cogs_count));
  printf("number of sprockets: %d\n", (m->sprockets_count));
  printf("completed bin contains %d of %d widgets\n", (m->widget_count), (m->completed_bin_size));
}


// insert_sprocket(m, amount) adds amount sprockets to the component supply
//   of machine m if amount is valid
// effects: may modify *m
//          may produce output

void insert_sprocket(struct machine *m, int amount) {
  if (amount < 0) {
    printf("Error: must insert a positive number of sprockets\n");
  }
  else {
    (m->sprockets_count) += amount;
  }
}


// insert_cog(m, amount) adds amount sprockets to the component supply
//   of machine m if amount is valid
// effects: may modify *m
//          may produce output

void insert_cog(struct machine *m, int amount) {
  if (amount < 0) {
    printf("Error: must insert a positive number of cogs\n");
  }
  else {
    (m->cogs_count) += amount;
  }
  // String to use for error message
  // "Error: must insert a positive number of cogs\n"
}


// display_config(m) prints the id of the machine m and its configuration
// effects: produces output

void display_config(const struct machine *m) {
  printf("Machine id = %d\n", (m->id));
  printf("Machine Config: requires %d cogs and %d sprockets, bin size = %d\n", (m->cogs_required), (m->sprockets_required), (m->completed_bin_size));
  // Strings to use for printed messages (in this order)
  // "Machine id = %d\n"
  // "Machine Config: requires %d cogs and %d sprockets, bin size = %d\n"

}


// make(m) starts machine m and makes as many widgets as possible 
//   before it runs out of supply or the completed bin is full
// effects: may modify *m
//          may produce output

void make(struct machine *m) {
  while (1) {
    if (((m->cogs_required)<=(m->cogs_count)) && ((m->sprockets_required)<=(m->sprockets_count)) && ((m->widget_count)<(m->completed_bin_size))) {
      (m->cogs_count) -= (m->cogs_required);
      (m->sprockets_count) -= (m->sprockets_required);
      (m->widget_count) += 1;
    }
    else {
      if ((m->cogs_count)<(m->cogs_required)) {
        printf("Out of cogs\n");
      }
      if ((m->sprockets_count)<(m->sprockets_required)) {
        printf("Out of sprockets\n");
      }
      if ((m->widget_count) >= (m->completed_bin_size)) {
        printf("Completed bin is full\n");
      }
      break;
    }
  }
  // Strings to use  (in this order)
  // "Out of cogs\n"
  // "Out of sprockets\n"
  // "Completed bin is full\n"

}


// replace_bin(m, new_size) replaces the bin of machine m with a new one
//   with different capacity (new_size) if new_size is valid
// effects: may modify *m
//          may produce output

void replace_bin(struct machine *m, int new_size) {
  if (new_size <= 0) {
    printf("Error: completed bin must have positive size\n");
  }
  else if ((m->completed_bin_size) > 0) {
    printf("Error: completed bin must be empty\n");
  }
  else {
    (m->completed_bin_size) = new_size;
  }
  // Strings to use for errors (in this order)
  // "Error: completed bin must have positive size\n"
  // "Error: completed bin must be empty\n"

}


// modify_machine(m, cogs, sprockets) changes the configuration of
//   machine m to now use the specified number of cogs and sprockets
//   to build a widget (if cogs, sprockets are both positive)
// effects: may modify *m
//          may produce output

void modify_machine(struct machine *m, int cogs, int sprockets) {
  if ((cogs > 0) && (sprockets > 0)) {
    (m->cogs_required) = cogs;
    (m->sprockets_required) = sprockets;
  }
  else {
    if (cogs <= 0) {
    printf("Error: must use a positive number for new required cogs\n");
  }
  if (sprockets <= 0) {
    printf("Error: must use a positive number for new required sprockets\n");
  }
  }
}


// io_test() reads commands and executes those commands by calling
//    the appropriate function.
// effects: reads input
//          produces output

void io_test(void) {

  // Do not change these constants:
  int RESET = lookup_symbol("reset");
  int STATUS = lookup_symbol("status");
  int COG = lookup_symbol("cog");
  int SPROCKET = lookup_symbol("sprocket");
  int MAKE = lookup_symbol("make");
  int EMPTY = lookup_symbol("empty");
  int RESIZE = lookup_symbol("resize");
  int MODIFY = lookup_symbol("modify");
  int SWITCH = lookup_symbol("switch");
  int CONFIG = lookup_symbol("config");
  int QUIT = lookup_symbol("quit");  

  int cmd = 0;
  int param1 = 0;
  int param2 = 0;

  // 
  // Initialize two machines to use default bin size and to require
  // defaults cogs and sprockets.
  struct machine m1 = {0, 0, 0, 1, DEFAULT_BIN_SIZE, DEFAULT_COGS_REQUIRED, DEFAULT_SPROCKETS_REQUIRED};
  struct machine m2 = {0, 0, 0, 2, DEFAULT_BIN_SIZE, DEFAULT_COGS_REQUIRED, DEFAULT_SPROCKETS_REQUIRED};

  // DO NOT CHANGE THIS LINE
  struct machine *current_machine = &m1;

  do {
    cmd = read_symbol();
    if (cmd == EMPTY) {
      empty_bin(current_machine);
    } else if (cmd == COG) {
      if (scanf("%d", &param1) != 1) {
        break;
      }
      insert_cog(current_machine, param1);
    }
    else if (cmd == SPROCKET) {
      if (scanf("%d", &param1) != 1) {
        break;
      }
      insert_sprocket(current_machine, param1);
    }
    else if (cmd == STATUS) {
    display_status(current_machine);
    }
    else if (cmd == MAKE) {
      make(current_machine);
    }
    else if (cmd == RESET) {
      reset_machine(current_machine);
    }
    else if (cmd == RESIZE) {
      if (scanf("%d", &param1) != 1) {
        break;
      }
      replace_bin(current_machine, param1);
    }
    else if (cmd == MODIFY) {
      if ((scanf("%d", &param1) != 1) || ((scanf("%d", &param1) != 1))) {
        break;
      }

      modify_machine(current_machine, param1, param2);
      // FILL IN THE REMAINING DETAILS
    }
    else if (cmd == SWITCH) {
      if ((current_machine->id) == 1) {
      current_machine = &m2;
      }
      else if ((current_machine->id) == 2) {
      current_machine = &m1;
      }
    }
    else if (cmd == CONFIG) {
      display_config(current_machine);
    }
  } while ((cmd != QUIT) && (cmd != INVALID_SYMBOL));
}


// Do not change this function

int main(void) {
  io_test();
}
