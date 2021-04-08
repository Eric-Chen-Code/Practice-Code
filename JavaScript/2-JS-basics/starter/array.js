// Arrays

//Initialize array
var names = ['John', 'Mark', 'Jane'];
var years = new Array(1990, 1969, 1948);

console.log(names[2]);
console.log(names.length);

//Mutate Array Data
names[1] = 'Ben';
names[names.length] = 'Mary';
console.log(names);

// DIfferent data types
var john = ['John', 'Smith', 1990, 'designer', false];

john.push('blue');
john.unshift('Mr');
console.log(john);

john.pop()
john.shift();
console.log(john);

console.log(john.indexOf(23)); // Will produce -1 if the element is not in the array

var isDesign = john.indexOf('designer') === -1 ? 'John is NOT a designer' : 'John IS a designer';
console.log(isDesign);


