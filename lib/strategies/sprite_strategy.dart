import 'package:flame/components.dart';
import 'package:flame/game.dart';

abstract class AnimationStrategy {
  SpriteAnimation getAnimation(FlameGame game);
}
