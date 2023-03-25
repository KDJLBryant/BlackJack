import 'dart:io';
/*
Create a function called OptionSelect which takes in a list of options,
prints them out to the user and asks for the user to select an option.

It should then print something like

List<String> options = ['BurgerKing', 'McDonalds'];
int idx = OptionSelect('Where do you want to eat?', options );
and returns the users answer.

Where do you want to eat?
[1] BurgerKing
[2] McDonalds
Bonus point!
Can you make it so that if the user does not select a correct option,
that the function will simply ask the user again to input an answer?

 */

int OptionSelect(String statement, List<String> options){
  bool errorHandle = true;
  int choice = 0;

  while(errorHandle){
    print("\n$statement\n");
    options.forEach((String i) {print(i);});
    try {
      choice = int.tryParse(stdin.readLineSync());
    } catch(typeError){
      continue;
    }
    print(choice);
    if(choice == 1 || choice == 2 ){
      return choice;
    }
  }
}