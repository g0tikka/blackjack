import 'card.dart';

class Player {
  final String name;
  int currentScore;
  List<Card> cards;
  Player({
    required this.name,
  })  : currentScore = 0,
        cards = [];
}
