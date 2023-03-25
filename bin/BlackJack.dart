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

  //PLAYER
  List<int> playerHand = [];
  //HOUSE
  List<int> houseHand = [];

  bool mainLoop = true;

  while(mainLoop) {
    bool errorHandle = true;
    Shuffler(deck);
    int bet = PlaceBet(bank);
    print("You bet $bet out of $bank.");
    InitialDeal(playerHand, houseHand, deck);

    HitOrStay(playerHand, houseHand, deck);
    if(!CheckIfBusted(playerHand)){
      HousePlays(houseHand, deck);
    }
    bank = CheckWinner(playerHand, houseHand, bank, bet);
    print("Bank: $bank");
    ReturnHands(playerHand, houseHand, deck);

    if(bank < 0){
      print('your bank roll is below zero');
      mainLoop = false;
      errorHandle = false;
    }
    while(errorHandle) {
      print("\n1 - Play again\n2 - Cash out\nEnter corresponding number: ");
      int replay = int.tryParse(stdin.readLineSync());
      if (replay == 2) {
        print("Thanks for playing!\nEnjoy your $bank");
        mainLoop = false;
        errorHandle = false;
      }else{
        errorHandle = false;
      }
    }
  }
  print("Thanks for playing!\nEnjoy your $bank");
}

