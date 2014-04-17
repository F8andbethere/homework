function bettingGame(monies){
  while(monies > 0) {

    alert("So, hey there, you have $"+monies+" to spend.");
    var playerBet = prompt("This is how the game works: you bet $5 or $10 and guess a number between 1 and 10. You win or lose.", "How much you wanna bet?");

    if ((playerBet == 5 || playerBet == 10) || (playerBet == "$5" || playerBet == "$10"))
      { (monies - playerBet) += parseInt(guessGame(playerBet)) }
    else { alert("I said you only get to bet $5 or $10!") };

  };

  alert("Ruh-roh! You lose. Bye.")
};

function guessGame(bet) {
  var randomNumber = Math.floor((Math.random()*10)+1);
  var playerGuess = prompt("Between 1 and 10, what's your guess going to be?", "5")

  alert("The number was "+randomNumber+"!")

  if (playerGuess == randomNumber) { return bet * 2 }
  else if (playerGuess == (randomNumber + 1)) { return bet }
  else if (playerGuess == (randomNumber - 1)) { return bet }
  else { return 0 };
};

prompt("Welcome to another of  a multitude of a waste of your time. Ye Olde Betting Game of Fuck.", "Oh God, get me out of here.");
alert("Yep.");

bettingGame(10);