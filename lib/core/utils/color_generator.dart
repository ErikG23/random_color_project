import 'dart:math';
import 'dart:ui';

/// Utiluty class responsible for generating random colors.
class ColorGenerator {
  final Random _random;

  ColorGenerator({Random? random}) : _random = random ?? Random();

  Color generateRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1.0,
    );
  }
}
