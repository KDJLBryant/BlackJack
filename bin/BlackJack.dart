import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  print('welcome');
  Welcome();
  List<int> theList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  Shuffler(theList);
  List<int> deck = [1, 2, 3, 4, 5, 6];
  DealCard(deck);

}