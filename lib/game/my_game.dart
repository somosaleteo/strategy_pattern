import 'dart:ui';

import 'package:flame/game.dart';

import '../strategies/gansters_strategies.dart';
import '../strategies/sprite_strategy.dart';
import 'character.dart';

class MyGame extends FlameGame {
  late Character _character;

  @override
  Future<void> onLoad() async {
    await images.loadAllImages();
    final walkStrategy = GanstersOneStrategy();
    _character = Character(walkStrategy)..size = Vector2(512.0, 512.0);
    await add(_character);
  }

  @override
  Color backgroundColor() => const Color.fromARGB(255, 148, 108, 75);

  void changeAnimation(AnimationStrategy strategy) {
    _character.setAnimationStrategy(strategy);
  }
}
