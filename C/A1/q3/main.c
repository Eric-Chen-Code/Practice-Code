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

#include "cs136.h"
#include "widget-io.h"

// Define your own global variables here:
int cog = 0;
int sprocket = 0;
int completed_bin = 0;
int bin_size = 10;

// resets the cogs, sprocket, and completed bin to zero and 
// resizes the bin to 10
void reset_machine(void) {
  cog = 0;
  sprocket = 0;
  completed_bin = 0;
  bin_size = 10;
}

// displays the status of the cogs, sprocket, completed bin and 
// bin size
void display_status(void) {
  // use these strings in your printf statements
  // "number of cogs: %d\n"
  // "number of sprockets: %d\n"
  // "completed bin contains %d of %d widgets\n"
  printf("number of cogs: %d\n", cog);
  printf("number of sprockets: %d\n", sprocket);
  printf("completed bin contains %d of %d widgets\n", completed_bin, bin_size);

}

// adds sprockets to the count
// requires: sprocket > 0
void insert_sprocket(int amount) {
  // use these strings in your printf statements
  // "Error: must insert a positive number of sprockets\n"
  if (amount<0) {
    printf("Error: must insert a positive number of sprockets\n");
  }
  else {
    sprocket += amount;
  }
}
// inserts cogs
// requires: cog > 0
void insert_cog(int amount) {
  // use these strings in your printf statements
  // "Error: must insert a positive number of cogs\n"
  if (amount<0) {
    printf("Error: must insert a positive number of cogs\n");
  }
  else {
    cog += amount;
  }
}

// makes a completed project and ads it to the completed bin until 
// sprockets, cogs, or space runs out
void make(void) {
  // use these strings in your printf statements
  //  "Out of cogs\n"
  //  "Out of sprockets\n"
  //  "Completed bin is full\n"
  if ((cog>=2) && (sprocket>=3) && (completed_bin<bin_size)) {
    cog -= 2;
    sprocket -= 3;
    completed_bin += 1;
    make();
  }
  else {
    if (cog<2) {
      printf("Out of cogs\n");
    }
    if (sprocket<3) {
      printf("Out of sprockets\n");
    }
    if (completed_bin >= bin_size) {
      printf("Completed bin is full\n");
    }
  }
}

// empties bin and sets completed bin to 0
void empty_bin(void) {
  completed_bin = 0;
}

// changes the size of the bin
// requires completed_bin = 0
void replace_bin(int new_size) {
  // use these strings in your printf statements
  // "Error: completed bin must have positive size\n"
  // "Error: completed bin must be empty\n"
  if (new_size <= 0) {
    printf("Error: completed bin must have positive size\n");
  }
  if (completed_bin > 0) {
    printf("Error: completed bin must be empty\n");
  }
  else {
    bin_size = new_size;
  }
} 

// This is the main function -- you should not modify it

int main(void) {
  widget_machine_input(); 
}
