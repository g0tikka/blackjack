class Card {
  Suits suit;
  Nominals nominal;
  Card({
    required this.suit,
    required this.nominal,
  });
  @override
  String toString() {
    return suit.name() + ' ' + nominal.name.toString();
  }
}

enum Nominals {
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king,
  ace,
}

enum Suits { clubs, hearts, diamonds, spades }

extension SuitsName on Suits {
  String name() {
    switch (this) {
      case Suits.clubs:
        return '♣︎';
      case Suits.diamonds:
        return '♦︎';
      case Suits.hearts:
        return '♥︎';
      case Suits.spades:
        return '♠︎';
    }
  }
}
