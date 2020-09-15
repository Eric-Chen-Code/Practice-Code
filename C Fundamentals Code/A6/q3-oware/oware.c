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

#include <stdbool.h>
#include <assert.h>
#include <stdio.h>
#include "oware.h"

const int HOUSE_COUNT = 12;

void oware_new_game(struct oware_board *board) {
  for (int i = 0; i < HOUSE_COUNT; i++) {
    board->houses[i] = 4;
  }
  for (int i = 0; i < 2; i++) {
    board->scores[i] = 0;
  }
  board->turn = 1;
}

int oware_seed_count(const struct oware_board *board, int player) {
  int seed = 0;
  if (player == 1) {
    for (int i = 0; i < 6; i++) {
      seed += board->houses[i];
    }
  }
  else {
    for (int i = 6; i < 12; i++) {
      seed += board->houses[i];
    }
  }
  return seed;
}


bool oware_valid_move(const struct oware_board *board, int house) {
  if (board->turn == 1) {
    if((board->houses[house] > 0) && ((0 <= house) && (house <= 5))) {
      if (oware_seed_count(board, 2) == 0) {
        int house_moves = 6;
        for (int i = 0; i < 6; i++) {
          if (board->houses[i] >= house_moves) {
            if (i == house) {
              return true;
            }
            else {
              house_moves -= 1;
            }
          }
          else {
            house_moves -= 1;
          }
        }
      }
      else {
        return true;
      }
    }
    else {
      return false;
    }
  }

  else {
    if((board->houses[house] > 0) && ((6 <= house) && (house <= 11))){
      if (oware_seed_count(board, 1) == 0) {
        int house_moves = 6;
        for (int i = 6; i < 12; i++) {
          if (board->houses[i] >= house_moves) {
            if (i == house) {
              return true;
            }
            else {
              house_moves -= 1;
            }
          }
          else {
            house_moves -= 1;
          }
        }
      }
      else {
        return true;
      }
    }
    else {
      return false;
    }
  }
  return false;
}


void oware_make_move(struct oware_board *board, int house) {
  int seeds = (board->houses[house]);
  int new_seeds = seeds;
  board->houses[house] = 0;
  while (seeds > 0) {
    if ((house + seeds) > 11) {
      board->houses[((house + seeds) % 11) - 1] += 1;
      seeds -= 1;
    }
    else {
      board->houses[house + seeds] += 1;
      seeds -= 1;
    }
  }
  while (new_seeds > 0) {
    if ((house + new_seeds) > 11) {
      if ((board->houses[((house + new_seeds) % 11) -1] == 2) || (board->houses[((house + new_seeds) % 11) -1] == 3)) {
        board->scores[board->turn-1] += board->houses[((house + new_seeds) % 11) -1];
        board->houses[((house + new_seeds) % 11) -1] = 0;
        new_seeds -= 1;
      }
      else if ((board->houses[((house + new_seeds) % 11) -1] < 2) || (board->houses[((house + new_seeds) % 11) -1] > 3)) {
        break;
      }
    }

    else {
      if ((board->houses[house + new_seeds] == 2) || (board->houses[house + new_seeds] == 3)) {
        board->scores[board->turn-1] += board->houses[house + new_seeds];
        board->houses[house + new_seeds] = 0;
        new_seeds -= 1;
      }
      else if ((board->houses[house + new_seeds] < 2) || (board->houses[house + new_seeds] > 3)) {
        break;
      }
    }
  }
  if (board->turn == 1) {
    board->turn = 2;
  }
  else {
    board->turn = 1;
  }
}


bool oware_game_over(const struct oware_board *board) {
  if (board->scores[1] >= 25) {
  return true;
  }
  else if (board->scores[1] >= 25) {
  return true;
  }
  else {
    if (board->turn == 1) {
      int house = 0;
      while (house < 6) {
        if (oware_valid_move (board, house) == true) {
        return false;
        }
        house += 1;
      }
      return true;
    }
    else if (board->turn == 2) {  
      int house = 6;
      while (house < 11) {
        if (oware_valid_move (board, house) == true) {
        return false;
        }
        house += 1;
      }
      return true;
    }
  }
  return true;
}


void oware_end_game(struct oware_board *board) {
  int b_house = 6;
  for (int i = 0; i < 6; i++) {
    board->scores[0] += board->houses[i];
  }
  for (int i = 6; i < 12; i++) {
    board->scores[1] += board->houses[i];
  }
}

// draw_lines() draws a +--+ line on the screen
// effects: outputs a line of text

static void draw_lines(void) {
  for (int i = 0; i < HOUSE_COUNT / 2; ++i) {
    printf("+--"); 
  }
  printf("+\n");
}

// draw_labels(player) draws the house labels for player
//  (A-F for player 1, G-L for player 2)
// requires: player is 1 or 2
// effects: ouputs a line of text

static void draw_labels(int player) {
  for (int i = 0; i < HOUSE_COUNT / 2; ++i) {
    int house;
    if (player == 1) {
      house = i;
    } else {
      house = HOUSE_COUNT - i - 1;
    }
    printf(" %c ", 'A' + house); 
  }
  printf("\n");
}

// see oware.h
void oware_draw(const struct oware_board *board) {
  draw_labels(2);
  draw_lines();
  for (int i = 0; i < HOUSE_COUNT / 2; ++i) {
    printf("|%2d", board->houses[HOUSE_COUNT - 1 - i]); 
  }
  printf("|\n");
  draw_lines();
  for (int i = 0; i < HOUSE_COUNT / 2; ++i) {
    printf("|%2d", board->houses[i]); 
  }
  printf("|\n");
  draw_lines();
  draw_labels(1);
  printf("\n");
  printf("Player 1: %d\n", board->scores[0]);
  printf("Player 2: %d\n", board->scores[1]); 
}
