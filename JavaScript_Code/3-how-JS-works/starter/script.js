///////////////////////////////////////
// Lecture: Hoisting

//functions
calculateAge(1965);

function calculateAge(year) {
    console.log(2016 - year);
}


//retirement(1956);
var retirement = function(year) {
    console.log(65 - (2016 - year));
}

// Hoisting only works for function declarations not function expressions

// variables

console.log(age);
var age = 23;
console.log(age);

// so function definitions are global and are taken first, but variables are not


function foo() {
    console.log(age);
    var age = 65;
    console.log(age);
}

foo();
console.log(age);


// Note a function has the scope of the function in which it is being run. Ex. 
// a function inside a function would have access to the global scope















///////////////////////////////////////
// Lecture: Scoping


// First scoping example

/*
var a = 'Hello!';
first();

function first() {
    var b = 'Hi!';
    second();

    function second() {
        var c = 'Hey!';
        console.log(a + b + c);
    }
}
*/



// Example to show the differece between execution stack and scope chain

/*
var a = 'Hello!';
first();

function first() {
    var b = 'Hi!';
    second();

    function second() {
        var c = 'Hey!';
        third()
    }
}

function third() {
    var d = 'John';
    console.log(a + b + c + d);
}
*/



///////////////////////////////////////
// Lecture: The this keyword









