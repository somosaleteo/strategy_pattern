import 'package:flame/components.dart';

import '../strategies/sprite_strategy.dart';

class Character extends SpriteAnimationComponent with HasGameRef {
  late AnimationStrategy _animationStrategy;

  Character(this._animationStrategy) {
    anchor = Anchor.center;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await _setAnimationStrategy(_animationStrategy);
  }

  Future<void> _setAnimationStrategy(AnimationStrategy strategy) async {
    _animationStrategy = strategy;
    animation = _animationStrategy.getAnimation(gameRef);
  }

  Future<void> setAnimationStrategy(AnimationStrategy strategy) async {
    await _setAnimationStrategy(strategy);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position = Vector2(size.x / 2.2, size.y / 4);
  }
}
