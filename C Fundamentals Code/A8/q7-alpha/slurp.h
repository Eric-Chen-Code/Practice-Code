// SEASHELL_READONLY   [do not copy/paste this line into a .c file]

// This module provides a slurp function

// slurp() reads in all remaining input and returns a 'new' string
//   containing the rest of the input
// notes: removes leading and trailing whitespace
//        returns an empty string "" if there is no non-whitespace input
// effects: allocates memory (caller must free)
// time: O(n)
char *slurp(void);
