// Function constructor

var john = {
  name: "John",
  yearOfBirth: 1990,
  job: "teacher",
};

//Function constructors always have capitals

var Person = function (name, yearOfBirth, job) {
  this.name = name;
  this.yearOfBirth = yearOfBirth;
  this.job = job;
};

//new creates a new empty object

Person.prototype.calculateAge = function () {
  console.log(2016 - this.yearOfBirth);
};

Person.prototype.lastName = "Smith";

var john = new Person();
john.name = "John";
john.yearOfBirth = 1990;
john.job = "teacher";
console.log(john);

var jane = new Person("Jane", 1969, "designer");
jane.calculateAge;

var mark = new Person("Mark", 1948, "retired");
mark.calculateAge;

john.calculateAge();
jane.calculateAge();
mark.calculateAge();

console.log(john.lastName);
console.log(jane.lastName);
console.log(mark.lastName);
