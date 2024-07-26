import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'game/my_game.dart';
import 'strategies/gansters_strategies.dart'; // Asegúrate de importar tus clases correctas

void main() {
  runApp(MaterialApp(home: GameUI(MyGame())));
}

class GameUI extends StatelessWidget {
  final MyGame game;

  const GameUI(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget(game: game),
          Positioned(
            bottom: 20,
            left: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      game.changeAnimation(GanstersOneStrategy());
                    },
                    child: const Text('Gansters One'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      game.changeAnimation(GanstersTwoStrategy());
                    },
                    child: const Text('Gansters Two'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      game.changeAnimation(GanstersThreeStrategy());
                    },
                    child: const Text('Gansters Three'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
