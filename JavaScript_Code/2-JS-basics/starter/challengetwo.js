var johnTeamOne = 89;
var johnTeamTwo = 120;
var johnTeamThree = 103;

var mikeTeamOne = 116;
var mikeTeamTwo = 94;
var mikeTeamThree = 123;

var maryOne = 97;
var maryTwo = 134;
var maryThree = 105;
var maryAvg = (maryOne + maryTwo + maryThree)/3;

johnAvg = (johnTeamOne + johnTeamTwo + johnTeamThree)/3;
mikeAvg = (mikeTeamOne + mikeTeamTwo + mikeTeamThree)/3;
console.log(johnAvg, mikeAvg, maryAvg);

if (johnAvg > mikeAvg) {
    console.log("John's team wins");
}
else if (johnAvg === mikeAvg) {
    console.log("Game was a draw!")
}
else {
    console.log("Mike's team wins");
}


if ((johnAvg > mikeAvg) && (johnAvg > maryAvg)) {
    console.log("John wins");
}
else if((maryAvg > mikeAvg) && (maryAvg > johnAvg)) {
    console.log("Mary wins");
}
else {
    console.log("Mike wins");
}