// Operator precedence

var now = 2018;
var yearJohn = 1989;
var fullAge = 18;

// Multiple operators
var isFullAge = now - yearJohn >= fullAge;
console.log(isFullAge);

// Grouping
var ageJohn = now - yearJohn;
var ageMark = 35; 
var average = (ageJohn + ageMark) / 2;
console.log(average)

// Multiple assignments
var x, y;
x = (3 + 5) * 4 - 6; //26
console.log(x);

// More operators
x *= 2;
console.log(x);

x+= 10;
console.log(x);

x++;
console.log(x);
