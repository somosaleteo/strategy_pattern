import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'sprite_strategy.dart';

class GanstersOneStrategy implements AnimationStrategy {
  @override
  SpriteAnimation getAnimation(FlameGame game) {
    return SpriteAnimation.fromFrameData(
      game.images.fromCache('g1/Shot.png'),
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.1,
        textureSize: Vector2(128, 128),
      ),
    );
  }
}

class GanstersTwoStrategy implements AnimationStrategy {
  @override
  SpriteAnimation getAnimation(FlameGame game) {
    return SpriteAnimation.fromFrameData(
      game.images.fromCache('g2/Attack_1.png'),
      SpriteAnimationData.sequenced(
        amount: 6,
        stepTime: 0.1,
        textureSize: Vector2(128, 128),
      ),
    );
  }
}

class GanstersThreeStrategy implements AnimationStrategy {
  @override
  SpriteAnimation getAnimation(FlameGame game) {
    return SpriteAnimation.fromFrameData(
      game.images.fromCache('g3/Shot.png'),
      SpriteAnimationData.sequenced(
        amount: 12,
        stepTime: 0.1,
        textureSize: Vector2(128, 128),
      ),
    );
  }
}
