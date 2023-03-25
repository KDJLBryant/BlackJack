import 'dart:io';

import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();
  //DECK BUILDING
  List<int> deck = ShuffledDeck();

  //CHIP MANAGEMENT
  int bank = BuyIn();
  int bet = PlaceBet(bank);
  print("You bet $bet out of $bank.");

  //PLAYER
  List<int> playerHand = [];
  //HOUSE
  List<int> houseHand = [];

  bool mainLoop = true;

  while(mainLoop) {
    Shuffler(deck);
    InitialDeal(playerHand, houseHand, deck);


    HitOrStay(playerHand, houseHand, deck);
    HousePlays(houseHand, deck);
    CheckWinner(playerHand, houseHand, bank, bet);
    print("Bank: $bank");
    ReturnHands(playerHand, houseHand, deck);

    bool errorHandle = true;
    while(errorHandle) {
      print("\n1 - Play again\n2 - Cash out\nEnter corresponding number: ");
      int replay = int.tryParse(stdin.readLineSync());
      if (replay == 2) {
        print("Thanks for playing!\nEnjoy your $bank");
        mainLoop = false;
      }else{
        errorHandle = false;
      }
    }
  }
}

