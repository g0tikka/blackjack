import 'dart:io';

class GameStart {
  bool start() {
    print('Play the game ? y/n');
    String? answer = stdin.readLineSync();
    while (true) {
      if (answer == 'y') {
        print('You have to score 21 points to win the game');
        return true;
      } else if (answer == 'n') {
        print('You ended the game');
        return false;
      } else {
        answer = stdin.readLineSync();
      }
    }
  }

  bool addACard() {
    print('Add a card ? y/n');
    String? answer = stdin.readLineSync();

    while (true) {
      if (answer == 'y') {
        return true;
      } else if (answer == 'n') {
        print('You ended the game');
        return false;
      } else {
        answer = stdin.readLineSync();
      }
    }
  }
}
