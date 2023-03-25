/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

void main() {}
String CardNamer(int i){
  //List<String> str = <String>[];

    if (i == 1) {
      return "Ace";
    }
    else if (i == 11) {
      return "Jack";
    }
    else if (i == 12) {
      return "Queen";
    }
    else if (i == 13) {
      return "King";
    }
    else if (i >= 2 && i <= 10) {
      return i.toString();
    }
    else {
      return "Invalid number, try again";
    }
  }

