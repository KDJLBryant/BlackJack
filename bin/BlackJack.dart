import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();

  List<int> deck = ShuffledDeck();
  print(deck);
  Shuffler(deck);
  int bank = BuyIn();
  int bet = PlaceBet(bank);
  print("You bet $bet out of $bank.");
  DealCard(deck);
}
