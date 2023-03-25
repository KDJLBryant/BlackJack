import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();
  //DECK BUILDING
  List<int> deck = ShuffledDeck();
  print(deck);
  Shuffler(deck);

  //CHIP MANAGEMENT
  //int bank = BuyIn();
  //int bet = PlaceBet(bank);
  //print("You bet $bet out of $bank.");

  //PLAYER
  List<int> playerHand = [];
  //HOUSE
  List<int> houseHand = [];

  InitialDeal(playerHand, houseHand,deck);
  Status(playerHand,houseHand);

  //HitOrStay();
  //HousePlays();
}

