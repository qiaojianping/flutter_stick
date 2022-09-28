import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stick_game/stick_game.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game = StickGame();
    return GameWidget(
      game: game,
    );
  }
}
