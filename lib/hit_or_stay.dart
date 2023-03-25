import 'functions/status.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';
import 'functions/option_select.dart';
import 'functions/check_if_busted.dart';

/*
This is a complicated function,which accepts three inputs,

the current player hand (list of integers),
house hand (list of integers)
the current deck (list of integers)

It should be a infinite loop that asks the user if he
wants to draw a card or stay. If he chooses to stay,
then the loop should stop.

If he wants to draw a card, add a card to his hand,
tell him what card he drew and print the current information of the game.

If he busts after drawing this card, break the loop as well.
 */

void HitOrStay(List<int> playerHand, List<int> houseHand, List<int> deck){
  bool mainLoop = true;
  int total = 0;

  while(mainLoop){
    Status(playerHand, houseHand);
    int choice = OptionSelect("1: Hit or 2: Stay", ["1", "2"]);

    switch(choice){
      case 1:{
        int dealtCard = DealCard(deck);
        print("Drawn card ${CardNamer(dealtCard)}");
        playerHand.add(dealtCard);}break;
      case 2:{mainLoop = false;}break;
    }
    if(CheckIfBusted(playerHand)){
      print("You've Busted!");
      mainLoop = false;
    }
  }
}