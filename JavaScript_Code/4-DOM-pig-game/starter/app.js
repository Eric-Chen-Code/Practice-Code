/*
GAME RULES:

- The game has 2 players, playing in rounds
- In each turn, a player rolls a dice as many times as he whishes. Each result get added to his ROUND score
- BUT, if the player rolls a 1, all his ROUND score gets lost. After that, it's the next player's turn
- The player can choose to 'Hold', which means that his ROUND score gets added to his GLBAL score. After that, it's the next player's turn
- The first player to reach 100 points on GLOBAL score wins the game

*/

var scores, roundScore, activePlayer;
scores = [0, 0]; //maybe
roundScore = 0;
activePlayer = 0;

//console.log(dice);

//document.querySelector("#current-" + activePlayer).textContent = dice;
//document.querySelector('#current-' + activePlayer).innerHTML = '<em>' + dice + '</em>';

//var x = document.querySelector("#score-0").textContent;
//console.log(x);

document.querySelector(".dice").style.display = "none";

document.getElementById("score-0").textContent = "0";
document.getElementById("score-1").textContent = "0";
document.getElementById("current-0").textContent = "0";
document.getElementById("current-1").textContent = "0";

function btn() {
  //do something here
}

document.querySelector(".btn-roll").addEventListener("click", function () {
  var dice = Math.floor(Math.random() * 6) + 1; //random number
  //diplay result
  var diceDom = document.querySelector(".dice");
  diceDom.style.display = "block";
  diceDom.src = "dice-" + dice + ".png";

  //update round score
  if (dice !== 1) {
    //Next player
    roundScore += dice;
    document.querySelector("#current-" + activePlayer).textContent = roundScore;
  }

  if (dice > 1) {
    // add score
  } else {
    //next player
    nextPlayer();
  }
  // Can also write function here directly into event listener method
});

document.querySelector(".btn-hold").addEventListener("click", function () {
  //Add CURRENT score to GLOBAL score
  scores[activePlayer] += roundScore;

  //Update the UI
  document.querySelector("#score" + activePlayer).textContent =
    scores[activePlayer];

  // Check if player won the game
  scores[activePlayer] >= 100 ? console.log("Player " + activePlayer " wins!")

  // Next player
  nextPlayer();
});
//btn function is called call back function because it is not called manually

function nextPlayer() {
  activePlayer === 0 ? (activePlayer = 1) : (activePlayer = 0);
  roundScore = 0;

  document.getElementById("current-0").textContent = "0";
  document.getElementById("current-0").textContent = "0";

  //document.querySelector(".player-0-panel").classList.remove("active");
  //document.querySelector(".player-1-panel").classList.add("active");

  document.querySelector(".player-0-panel").classList.toggle("active");
  document.querySelector(".player-1-panel").classList.toggle("active");

  document.querySelector(".dice").style.display = "none";
}
