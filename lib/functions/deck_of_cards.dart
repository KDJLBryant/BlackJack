/*
Create a function called DeckOfCards that returns a brand new deck of cards.

The deck should consists of List of integers, where each card is assigned
a number from 1-13, so essentially you will the number 1 four times,
the number 2 four times etc...

Make this function return the List of integers.
 */

List<int> DeckOfCards(){
  List<int> DeckOfCards = [];

  for(int i=1; i<14; i++){
    for(int j=0; j<4; j++){
      DeckOfCards.add(i);
    }
  }
  return DeckOfCards;
}

