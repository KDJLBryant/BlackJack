import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  print('welcome');
  Welcome();
  List<int> deck = [1, 2, 3, 4, 5, 6];
  deck.shuffle();
  DealCard(deck);
  List<int> hand = [];
  DrawCard(hand, deck);
  print(hand);

}