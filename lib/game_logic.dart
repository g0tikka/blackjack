import 'graphics.dart';
import 'player.dart';
import 'deck.dart';
import 'card.dart';

class Game {
  final player = Player(
    name: 'Anna',
  );
  final graphic = GameStart();
  final Map<Nominals, int> cardValue = {
    Nominals.two: 2,
    Nominals.three: 3,
    Nominals.four: 4,
    Nominals.five: 5,
    Nominals.six: 6,
    Nominals.seven: 7,
    Nominals.eight: 8,
    Nominals.nine: 9,
    Nominals.ten: 10,
    Nominals.jack: 10,
    Nominals.queen: 10,
    Nominals.king: 10,
    Nominals.ace: 1,
  };
  void play() {
    bool start = graphic.start();
    final deck = Deck();
    deck.makeDeck();
    deck.shuffleDeck();

    while (true) {
      if (player.currentScore < 21 && start) {
        bool b = graphic.addACard();
        if (b) {
          final card = deck.pullCard();
          print(card.toString());
          player.currentScore += cardValue[card.nominal]!;
          print('Your current score: ${player.currentScore}');
          player.cards.add(card);
          print('Your cards are: ${player.cards}');
          if (player.currentScore == 21) {
            print('You won');
            break;
          } else if (player.currentScore > 21) {
            print('You lost');
            break;
          }
        } else if (b == false || start == false) {
          break;
        }
      } else {
        break;
      }
    }
  }
}
