import 'functions/score_function.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';

/*
Once the player is done with his turn (HitOrStay) the house will play.

Create a function called HousePlays which accepts two inputs,
both are list of integers. One is the current hand of the house,
and the other is the deck.

Implement the normal blackjack rules that a dealer in a real
casino would behave (It depends on the score what if he draws a card or not).

Print the cards and score of the house before he starts,
and inform what card (if any) he draws next, after each draw of card,
show the score of the house.
 */

void HousePlays(List<int> houseHand, List<int> deck){

  while(CalculateScore(houseHand) < 18){
    print("House hand: ");
    for(int card in houseHand){
      print(CardNamer(card));
    }

    int dealtCard = DealCard(deck);
    print("Drawn house card ${CardNamer(dealtCard)}");
    houseHand.add(dealtCard);
  }
}
