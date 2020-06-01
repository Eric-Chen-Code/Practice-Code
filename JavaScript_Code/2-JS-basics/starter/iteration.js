// Loops and Iteration
// for loops
for (var i = 0; i < 10; i++) {
    console.log(i);
}

//while loops
var i = 0;
while (i < john.length) {
    console.log(john[i]);
    i++;
}

//continue and break statements
var john = ['John', 'Smith', 1990, 'designer', false, 'blue'];
for (var i = 0; i < john.length; i++) {
    if (typeof john[i] !== 'string') continue;
    console.log(john[i]);
}

