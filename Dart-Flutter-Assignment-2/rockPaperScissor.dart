import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Choose Rock, Paper, Scissors");
  String user = stdin.readLineSync()?.toLowerCase() as String;
  String computer = ['paper', 'rock', 'scissors'][Random().nextInt(3)];

  if (user == computer) {
    print("It's a Tie");
  } else if (user == 'rock' && computer == 'paper') {
    print("You Fail");
  } else if (user == 'rock' && computer == 'scissors') {
    print("You Won");
  } else if (user == 'paper' && computer == 'rock') {
    print("You Won");
  } else if (user == 'paper' && computer == 'scissors') {
    print("You Fail");
  } else if (user == 'scissors' && computer == 'paper') {
    print("You Won");
  } else if (user == 'scissors' && computer == 'rock') {
    print("You Fail");
  } else {
    print("Wrong input");
  }
}
