import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */

int PlaceBet(int currentBank) {

  while (true) {
    stdout.write("How much do you want to bet? ");
    String input = stdin.readLineSync();

    try {
      int bet = int.parse(input);

      if (bet <= 0) {
        print("Invalid bet amount. Please enter a positive integer.");
      }
      else if (bet > currentBank) {
        print("You don't have enough money for that bet. Your current bank is $currentBank.");
      }
      else {
        return bet;
      }
    }
    catch (e) {
      print("Invalid input. Please enter a positive integer.");
    }
  }
}

int BuyIn() {

  while (true) {
    stdout.write("How much do you want to buy in for? ");
    String input = stdin.readLineSync();

    try {
      int buyIn = int.parse(input);
      
      if (buyIn <= 0) {
        print("Invalid buy-in amount. Please enter a positive integer.");
      }
      else {
        return buyIn;
      }
    }
    catch (e) {
      print("Invalid input. Please enter a positive integer.");
    }
  }
}
