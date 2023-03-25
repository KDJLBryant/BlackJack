/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */



import 'package:BlackJack/functions/functions.dart';

int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet){
  int playerScore = CalculateScore(playerHand);
  int houseScore =  CalculateScore(houseHand);


  if (playerScore > 21) {
    print("Busted! House wins.");
    return currentBankRoll - currentBet;
  } else if (houseScore > 21) {
    print("House busted. You win!");
    return currentBankRoll + currentBet;
  } else if (houseScore == playerScore) {
    print("No winners!");
    return currentBet;
  } else if (playerScore == 21 && playerHand.length == 2) {
    print("Blackjack! Player wins.");
    return currentBankRoll + currentBet;
  } else if (houseScore == 21 && houseHand.length == 2) {
    print("Blackjack! House wins.");
    return currentBankRoll - currentBet;
  } else if (playerScore > houseScore) {
    print("Player wins!");
    return currentBankRoll + currentBet;
  } else if (houseScore > playerScore) {
    print("House wins!");
    return currentBankRoll - currentBet;
  }






}