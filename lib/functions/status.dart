import 'score_function.dart';
import 'card_namer.dart';

/*
Create a function that prints the current "Status" of the match,
called ... uh... Status! Yes! That's it!

The function should take in two lists of integers, the playerHand and houseHand.

Using the score function and cardnamer, print info that informs the user
on what hand he has, his score and the hand of the house.

(Check out blackjack rules on what we actually get to know from the house
hand before showdown.)

 */
void Status(List<int> playerHand, List<int> houseHand) {
  int playerScore = CalculateScore(playerHand);
  String playerHandShow = "";

  for (int card in playerHand) {
    playerHandShow += CardNamer(card) + ' ';
  }
    //String playerHandShow = CardNamer(playerHand[0]);

  String houseHandShow = CardNamer(houseHand[0]); // Only show the first card of the house hand

  print("Your hand is: $playerHandShow and your score is: $playerScore");
  print("House hand is: $houseHandShow with one card hidden");
}
