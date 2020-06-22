// Function constructor

var john = {
  name: "John",
  yearOfBirth: 1990,
  job: "teacher",
};

var Person = function (name, yearOfBirth, job) {
  this.name = name;
  this.yearOfBirth = yearOfBirth;
  this.job = job;
  this.calculateAge = function () {
    console.log(2016 - this.yearOfBirth);
  };
};

//new creates a new empty object
var john = new Person("John", 1990, "teacher");

john.calculateAge();

var jane = new Person("Jane", 1969, "designer");
jane.calculateAge;

var mark = new Person("Mark", 1948, "retired");
mark.calculateAge;
