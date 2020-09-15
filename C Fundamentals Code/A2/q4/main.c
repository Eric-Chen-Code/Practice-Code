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

/////////////////////////////////////////////////////////////////////////////
// PROVIDED FUNCTION and CONSTANTS (DO NOT CHANGE)

// print_header(year, month) prints the calendar "header"
//   for the given year/month
// notes:   if month is invalid, does not print full header
//          header is best aligned for 4-digit years
// effects: produces output

void print_header(int year, int month) {
  if (month == 1) {
    printf("====January %d====\n", year);
  } else if (month == 2) {
    printf("===February %d====\n", year);
  } else if (month == 3) {
    printf("=====March %d=====\n", year);
  } else if (month == 4) {
    printf("=====April %d=====\n", year);
  } else if (month == 5) {
    printf("======May %d======\n", year);
  } else if (month == 6) {
    printf("=====June %d======\n", year);
  } else if (month == 7) {
    printf("=====July %d======\n", year);
  }else if (month == 8) {
    printf("====August %d=====\n", year);
  } else if (month == 9) {
    printf("===September %d===\n", year);
  } else if (month == 10) {
    printf("====October %d====\n", year);
  } else if (month == 11) {
    printf("===November %d====\n", year);
  } else if (month == 12) {
    printf("===December %d====\n", year);
  }
  printf("Su Mo Tu We Th Fr Sa\n");
}

const int base_year = 1589;
const int SUNDAY = 0;
const int base_year_jan_1 = SUNDAY;

/////////////////////////////////////////////////////////////////////////////
// is_leap_year determines if the year is a leap year, according to // the Gregorian Calendar
// requires: year >= 1589

bool is_leap_year(int year) {
  if (year%4 == 0) {
    if(year%100 == 0) {
      if (year%400 == 0) {
        return true;
      }
      else {
        return false;
      }
    }
    else {
      return true;
    }
  } else {
    return false;
  }
}

// days_in_month(year, month) returns the number of days in the 
// corresponding month
// requires year >= 1589
// requires month > 0
int days_in_month(int year, int month) {
  if (is_leap_year (year)) {
    if (month == 1) {
      return 31;
    }
    if (month == 2) {
      return 29;
    }
    if (month == 3) {
      return 31;
    }
    if (month == 4) {
      return 30;
    }
    if (month == 5) {
      return 31;
    }
    if (month == 6) {
      return 30;
    }
    if (month == 7) {
      return 31;
    }
    if (month == 8) {
      return 31;
    }
    if (month == 9) {
      return 30;
    }
    if (month == 10) {
      return 31;
    }
    if (month == 11) {
      return 30;
    }
    if (month == 12) {
      return 31;
    }
  }
    if (!is_leap_year (year)) {
    if (month == 1) {
      return 31;
    }
    if (month == 2) {
      return 28;
    }
    if (month == 3) {
      return 31;
    }
    if (month == 4) {
      return 30;
    }
    if (month == 5) {
      return 31;
    }
    if (month == 6) {
      return 30;
    }
    if (month == 7) {
      return 31;
    }
    if (month == 8) {
      return 31;
    }
    if (month == 9) {
      return 30;
    }
    if (month == 10) {
      return 31;
    }
    if (month == 11) {
      return 30;
    }
    if (month == 12) {
      return 31;
    }
    }
  return 1;
}

// day_of_the_week (year, month, day) finds the "day of the week" // for the given date
// requires: year >= 1589
// requires: month > 0
// requires: day > 0
int day_of_the_week(int year, int month, int day) {
  return 5;
}

// print_calendar(year, month) prints a "pretty" calendar for the // given month
// requires year >= 1589
// requires month > 0
void print_calendar(int year, int month) {

}


int main(void) {
  assert(is_leap_year(2020));
  assert(days_in_month(2020, 1) == 31);
  assert(day_of_the_week(2020, 1, 31) == 5); 
  print_calendar(2020, 1);
}
