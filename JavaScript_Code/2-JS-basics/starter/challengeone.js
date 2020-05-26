var massMark = 10;
var massJohn = 10;
var heightMark = 10;
var heightJohn = 10;

var bmiMark = massMark / (heightMark * heightMark);
var bmiJohn = massJohn / (heightJohn * heightJohn);

var markHigher = bmiMark > bmiJohn;

console.log("Is Mark's BMI higher than John's? " + markHigher);