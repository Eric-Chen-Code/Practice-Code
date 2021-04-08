// Functions

function calculateAge(birthYear) {
    return 2018 - birthYear;
}

var ageJohn = calculateAge(1990);
var ageMike = calculateAge(1948);
var ageJane = calculateAge(1969);
console.log(ageJohn, ageMike, ageJane);


function yearsUntilRetirement(year, firstName) {
    var age = calculateAge(year)
    var retirement = 65 - age;
    console.log(firstName + " retires in " + retirement + " years.")
}

yearsUntilRetirement(1990, "John");

//Functions Statements and Expressions

//Function declaration
// function what(job, firstName) {}


//Function Expression
var what = function (job, firstName) {
    switch (job) {
        case 'teacher':
            return firstName + ' teaches kids how to code';

        case 'driver':
            return firstName + ' drives a cab in Lisbon.'
        case 'designer':
            return firstName + ' designs beautiful websites';
        default:
            return firstName + ' does something else';
            }
}

console.log(what('teacher', 'John'));

