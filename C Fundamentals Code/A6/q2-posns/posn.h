// A module for working with posns

// SEASHELL_READONLY

struct posn {
  int x;
  int y;
};

// closer_to_origin(a, b) returns a negative value if a is closer to the origin
//   than b, a positive value if b is closer than a, and 0 if both are
//   the same distance.
//   Here, distance refers to the Euclidian distance.
// requires: a, b are not NULL

int closer_to_origin(const struct posn *a, const struct posn *b);

// closer_to_origin_taxi(a, b) returns a negative value if a is closer to the
//   origin than b, a positive value if b is closer than a, and 0
//   if both are the same distance.
//   Here, distance refers to the taxi cab (or Manhattan) distance
// requires: a, b are not NULL

int closer_to_origin_taxi(const struct posn *a, const struct posn *b);


// compare_x(a, b) returns a negative value if a->x < b->x,
//   a positive value if a->x > b->x, and 0 if a->x == b->x
// requires : a, b are not NULL

int compare_x(const struct posn *a, const struct posn *b);

// compare_date(a, b) assumes a and b represent dates using "x" for the month,
//   "y" for the day.
//   returns a negative value if a is an earlier date, a positive if a is a
//   later date, and 0 if a and be are the same date
// requires: a, b are not NULL
//           a, b have x fields between 1 (Jan) and 12 (Dec)
//           a, b have y fields between 1 and 31
//           a, b are valid dates [not asserted]
int compare_date(const struct posn *a, const struct posn *b);
