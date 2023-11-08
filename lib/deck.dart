import 'card.dart';
import 'dart:math';

class Deck {
  final List<Card> deck = [];
  List<Card> makeDeck() {
    for (final nominal in Nominals.values) {
      for (final suit in Suits.values) {
        deck.add(
          Card(
            suit: suit,
            nominal: nominal,
          ),
        );
      }
    }
    return deck;
  }

  List<Card> shuffleDeck() {
    final random = Random();
    for (int i = deck.length - 1; i > 0; --i) {
      int n = random.nextInt(i + 1);

      Card temp = deck[i];
      deck[i] = deck[n];
      deck[n] = temp;
    }
    return deck;
  }

  Card pullCard() {
    final last = deck[0];
    deck.removeAt(0);
    return last;
  }

  void pushCard(Card card) {
    return deck.add(card);
  }
}
