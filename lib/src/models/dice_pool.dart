import 'dart:math';

import 'package:meta/meta.dart';

import 'dice.dart';

class DicePool {
  /// Random number generator used for the game
  final _random = Random();

  final int size;

  List<Dice> _content;

  List<Dice> get content => _content;

  DicePool({@required this.size});

  List<Dice> roll() {
    return _content = List.generate(
        size, (_) => Dice.values[_random.nextInt(6)],
        growable: false);
  }

  void clear() {
    _content = null;
  }
}